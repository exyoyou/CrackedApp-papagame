.class public Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Lcom/netease/nis/quicklogin/utils/h;

.field private b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

.field private c:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->c:Landroid/webkit/WebView;

    return-object p0
.end method

.method private a()V
    .locals 7

    .line 2
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_wv_protocol:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->c:Landroid/webkit/WebView;

    .line 3
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isProtocolDialogMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getDialogWidth()I

    move-result v2

    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 6
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getDialogHeight()I

    move-result v3

    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getDialogX()I

    move-result v4

    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 7
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getDialogY()I

    move-result v5

    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isBottomDialog()Z

    move-result v6

    move-object v1, p0

    .line 8
    invoke-static/range {v1 .. v6}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/app/Activity;IIIIZ)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolBackgroundImage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_ll_root_detail:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->a:Lcom/netease/nis/quicklogin/utils/h;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolBackgroundImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/nis/quicklogin/utils/h;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 12
    :cond_2
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->d()V

    .line 13
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->c()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "url"

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    .line 15
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 17
    sget v1, Lcom/netease/nis/quicklogin/R$id;->yd_tv_navigation:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->c:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->c:Landroid/webkit/WebView;

    .line 49
    .line 50
    new-instance v1, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$a;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$a;-><init>(Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->c:Landroid/webkit/WebView;

    .line 59
    .line 60
    new-instance v1, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$b;

    .line 61
    .line 62
    invoke-direct {v1, p0}, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity$b;-><init>(Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private c()V
    .locals 4

    .line 1
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_rl_navigation:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavColor()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavColor()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavHeight()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavHeight()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    int-to-float v2, v2

    .line 49
    invoke-static {p0, v2}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_tv_navigation:I

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/widget/TextView;

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavTitleSize()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavTitleSize()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    int-to-float v1, v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavTitleDpSize()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_3

    .line 94
    .line 95
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavTitleDpSize()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    int-to-float v1, v1

    .line 102
    const/4 v2, 0x1

    .line 103
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 104
    .line 105
    .line 106
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavTitleColor()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_4

    .line 113
    .line 114
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavTitleColor()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    .line 122
    .line 123
    :cond_4
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_iv_navigation:I

    .line 124
    .line 125
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroid/widget/ImageView;

    .line 130
    .line 131
    if-eqz v0, :cond_a

    .line 132
    .line 133
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavBackIconDrawable()Landroid/graphics/drawable/Drawable;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    if-eqz v1, :cond_5

    .line 140
    .line 141
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 142
    .line 143
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavBackIconDrawable()Landroid/graphics/drawable/Drawable;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_5
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 152
    .line 153
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavBackIcon()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-nez v1, :cond_6

    .line 162
    .line 163
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->a:Lcom/netease/nis/quicklogin/utils/h;

    .line 164
    .line 165
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 166
    .line 167
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavBackIcon()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v1, v2}, Lcom/netease/nis/quicklogin/utils/h;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    .line 177
    .line 178
    :cond_6
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 183
    .line 184
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 185
    .line 186
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavBackIconWidth()I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_7

    .line 191
    .line 192
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 193
    .line 194
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavBackIconWidth()I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    int-to-float v2, v2

    .line 199
    invoke-static {p0, v2}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 204
    .line 205
    :cond_7
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 206
    .line 207
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavBackIconHeight()I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-eqz v2, :cond_8

    .line 212
    .line 213
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 214
    .line 215
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavBackIconHeight()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    int-to-float v2, v2

    .line 220
    invoke-static {p0, v2}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 225
    .line 226
    :cond_8
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 227
    .line 228
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavBackIconMargin()I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    if-eqz v2, :cond_9

    .line 233
    .line 234
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 235
    .line 236
    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavBackIconMargin()I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    int-to-float v2, v2

    .line 241
    invoke-static {p0, v2}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;F)I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    const/4 v3, 0x0

    .line 246
    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 247
    .line 248
    .line 249
    :cond_9
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    .line 251
    .line 252
    :cond_a
    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getStatusBarColor()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p0, v0}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/app/Activity;I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isStatusBarDarkColor()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {p0, v0}, Lcom/netease/nis/quicklogin/utils/i;->b(Landroid/app/Activity;Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public back(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->c:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->c:Landroid/webkit/WebView;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a()Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c()Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 13
    .line 14
    sget p1, Lcom/netease/nis/quicklogin/R$layout;->yd_activity_protocol_detail:I

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/h;->a(Landroid/content/Context;)Lcom/netease/nis/quicklogin/utils/h;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->a:Lcom/netease/nis/quicklogin/utils/h;

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->a()V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->b()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->a(Landroid/content/Intent;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->c:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->c:Landroid/webkit/WebView;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->c:Landroid/webkit/WebView;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->c:Landroid/webkit/WebView;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->c:Landroid/webkit/WebView;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->c:Landroid/webkit/WebView;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->c:Landroid/webkit/WebView;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->c:Landroid/webkit/WebView;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->c:Landroid/webkit/WebView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;->c:Landroid/webkit/WebView;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

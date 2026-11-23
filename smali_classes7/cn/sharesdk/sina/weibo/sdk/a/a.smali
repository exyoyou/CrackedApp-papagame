.class public Lcn/sharesdk/sina/weibo/sdk/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/webkit/WebView;

.field private d:Lcn/sharesdk/sina/weibo/sdk/LoadingBar;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/sdk/a/a;)Lcn/sharesdk/sina/weibo/sdk/LoadingBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->d:Lcn/sharesdk/sina/weibo/sdk/LoadingBar;

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "-"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "_"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, "weibosdk"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, "0031405000"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, "_android"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->c:Landroid/webkit/WebView;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const/4 v2, 0x1

    .line 59
    invoke-static {v1, v2}, Lcn/sharesdk/framework/utils/n;->a(Landroid/webkit/WebSettings;Z)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->c:Landroid/webkit/WebView;

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-static {v1, v2}, Lcn/sharesdk/framework/utils/n;->a(Landroid/webkit/WebView;Z)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->c:Landroid/webkit/WebView;

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->c:Landroid/webkit/WebView;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->c:Landroid/webkit/WebView;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->c:Landroid/webkit/WebView;

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->c:Landroid/webkit/WebView;

    .line 101
    .line 102
    new-instance v1, Lcn/sharesdk/sina/weibo/sdk/a/a$2;

    .line 103
    .line 104
    invoke-direct {v1, p0}, Lcn/sharesdk/sina/weibo/sdk/a/a$2;-><init>(Lcn/sharesdk/sina/weibo/sdk/a/a;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method


# virtual methods
.method public a()Landroid/widget/Button;
    .locals 1

    .line 77
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->g:Landroid/widget/Button;

    return-object v0
.end method

.method public a(I)Landroid/widget/RelativeLayout;
    .locals 9

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 7
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    const-string v4, "ssdk_sina_web_title_id"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    const v3, -0x20203

    .line 8
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 9
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    const/16 v4, 0x37

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v3

    .line 10
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    .line 11
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 12
    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->a:Landroid/widget/TextView;

    const/high16 v5, 0x41880000    # 17.0f

    const/4 v6, 0x1

    .line 14
    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 15
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->a:Landroid/widget/TextView;

    const/16 v5, -0x7e00

    const v7, 0x66ff8200

    invoke-static {v5, v7}, Lcn/sharesdk/sina/weibo/sdk/a;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 16
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    const-string v5, "ssdk_sina_web_close"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 17
    iget-object v5, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    .line 18
    :cond_0
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v3

    .line 19
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->a:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 20
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->a:Landroid/widget/TextView;

    new-instance v5, Lcn/sharesdk/sina/weibo/sdk/a/a$1;

    invoke-direct {v5, p0}, Lcn/sharesdk/sina/weibo/sdk/a/a$1;-><init>(Lcn/sharesdk/sina/weibo/sdk/a/a;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 21
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xf

    .line 22
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 23
    iget-object v7, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    new-instance v4, Landroid/widget/TextView;

    iget-object v7, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-direct {v4, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->b:Landroid/widget/TextView;

    const v7, -0xadadae

    .line 25
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->b:Landroid/widget/TextView;

    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    if-lez p1, :cond_1

    .line 27
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->b:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(I)V

    .line 28
    :cond_1
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    .line 29
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 30
    iget-object v7, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v7, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    new-instance p1, Landroid/webkit/WebView;

    iget-object v7, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-direct {p1, v7}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->c:Landroid/webkit/WebView;

    .line 32
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {p1, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 34
    iget-object v7, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v7, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    new-instance p1, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;

    iget-object v7, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-direct {p1, v7}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->d:Lcn/sharesdk/sina/weibo/sdk/LoadingBar;

    .line 36
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-static {p1, v8}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result p1

    .line 37
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v7, v8, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 39
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->d:Lcn/sharesdk/sina/weibo/sdk/LoadingBar;

    invoke-virtual {v0, p1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    new-instance p1, Landroid/view/View;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    const-string v2, "ssdk_weibo_common_shadow_top"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    .line 42
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 43
    :cond_2
    invoke-virtual {v0, p1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 45
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->e:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 47
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 49
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    new-instance p1, Landroid/widget/ImageView;

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-direct {p1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 52
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    const-string v7, "ssdk_weibo_empty_failed"

    invoke-static {v4, v7}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    .line 53
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    :cond_3
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 55
    iget-object v7, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-static {v7, v1}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 56
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 57
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    new-instance p1, Landroid/widget/TextView;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->f:Landroid/widget/TextView;

    .line 59
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    const-string v1, "ssdk_sina_web_net_error"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    .line 60
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->f:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 61
    :cond_4
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->f:Landroid/widget/TextView;

    const v1, -0x424243

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->f:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p1, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 63
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 64
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->e:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance p1, Landroid/widget/Button;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->g:Landroid/widget/Button;

    const v1, -0x878788

    .line 66
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->g:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 68
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->g:Landroid/widget/Button;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p1, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 69
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    const-string v1, "ssdk_sina_web_refresh"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_5

    .line 70
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->g:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 71
    :cond_5
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    const/16 v1, 0x8e

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result p1

    .line 72
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->h:Landroid/content/Context;

    const/16 v2, 0x2e

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 73
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, p1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 75
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->g:Landroid/widget/Button;

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->e()V

    return-object v0
.end method

.method public b()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->a:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->c:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Landroid/widget/LinearLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/a/a;->e:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object v0
.end method

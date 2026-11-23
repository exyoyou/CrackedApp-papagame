.class public Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Landroid/widget/ScrollView;

.field private r:Landroid/widget/ScrollView;

.field private s:Landroid/widget/ScrollView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Lcom/beizi/ad/internal/download/BeiZiWebView;

.field private x:Lcom/beizi/ad/internal/download/BeiZiWebView;

.field private y:Lcom/beizi/ad/internal/download/BeiZiWebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->l:I

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->m:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->n:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->o:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->p:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private a()V
    .locals 1

    .line 2
    sget v0, Lcom/beizi/fusion/R$id;->beizi_download_appinfo_back:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->a:Landroid/widget/ImageView;

    .line 3
    sget v0, Lcom/beizi/fusion/R$id;->beizi_download_appinfo_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->b:Landroid/widget/TextView;

    .line 4
    sget v0, Lcom/beizi/fusion/R$id;->beizi_appinfo_permission_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->c:Landroid/widget/LinearLayout;

    .line 5
    sget v0, Lcom/beizi/fusion/R$id;->beizi_appinfo_permission_textview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->f:Landroid/widget/TextView;

    .line 6
    sget v0, Lcom/beizi/fusion/R$id;->beizi_appinfo_permission_below_line:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->i:Landroid/view/View;

    .line 7
    sget v0, Lcom/beizi/fusion/R$id;->beizi_appinfo_privacy_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->d:Landroid/widget/LinearLayout;

    .line 8
    sget v0, Lcom/beizi/fusion/R$id;->beizi_appinfo_privacy_textview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->g:Landroid/widget/TextView;

    .line 9
    sget v0, Lcom/beizi/fusion/R$id;->beizi_appinfo_privacy_below_line:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->j:Landroid/view/View;

    .line 10
    sget v0, Lcom/beizi/fusion/R$id;->beizi_appinfo_intro_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->e:Landroid/widget/LinearLayout;

    .line 11
    sget v0, Lcom/beizi/fusion/R$id;->beizi_appinfo_intro_textview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->h:Landroid/widget/TextView;

    .line 12
    sget v0, Lcom/beizi/fusion/R$id;->beizi_appinfo_intro_below_line:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->k:Landroid/view/View;

    .line 13
    sget v0, Lcom/beizi/fusion/R$id;->beizi_download_appinfo_persmission_content_scrollview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->q:Landroid/widget/ScrollView;

    .line 14
    sget v0, Lcom/beizi/fusion/R$id;->beizi_download_appinfo_persmission_content_textview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->t:Landroid/widget/TextView;

    .line 15
    sget v0, Lcom/beizi/fusion/R$id;->beizi_download_appinfo_persmission_content_webview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/beizi/ad/internal/download/BeiZiWebView;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->w:Lcom/beizi/ad/internal/download/BeiZiWebView;

    .line 16
    sget v0, Lcom/beizi/fusion/R$id;->beizi_download_appinfo_privacy_content_scrollview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->r:Landroid/widget/ScrollView;

    .line 17
    sget v0, Lcom/beizi/fusion/R$id;->beizi_download_appinfo_privacy_content_textview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->u:Landroid/widget/TextView;

    .line 18
    sget v0, Lcom/beizi/fusion/R$id;->beizi_download_appinfo_privacy_content_webview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/beizi/ad/internal/download/BeiZiWebView;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->x:Lcom/beizi/ad/internal/download/BeiZiWebView;

    .line 19
    sget v0, Lcom/beizi/fusion/R$id;->beizi_download_appinfo_intro_content_scrollview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->s:Landroid/widget/ScrollView;

    .line 20
    sget v0, Lcom/beizi/fusion/R$id;->beizi_download_appinfo_intro_content_textview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->v:Landroid/widget/TextView;

    .line 21
    sget v0, Lcom/beizi/fusion/R$id;->beizi_download_appinfo_intro_content_webview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/beizi/ad/internal/download/BeiZiWebView;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->y:Lcom/beizi/ad/internal/download/BeiZiWebView;

    return-void
.end method

.method private a(I)V
    .locals 7

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 22
    invoke-direct {p0}, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->d()V

    .line 23
    iget-object v1, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->k:Landroid/view/View;

    iget-object v3, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->v:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->s:Landroid/widget/ScrollView;

    iget-object v6, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->y:Lcom/beizi/ad/internal/download/BeiZiWebView;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->a(Landroid/widget/TextView;Landroid/view/View;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/ScrollView;Landroid/webkit/WebView;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 24
    invoke-direct {p0}, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->d()V

    .line 25
    iget-object v1, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->j:Landroid/view/View;

    iget-object v3, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->u:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->r:Landroid/widget/ScrollView;

    iget-object v6, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->x:Lcom/beizi/ad/internal/download/BeiZiWebView;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->a(Landroid/widget/TextView;Landroid/view/View;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/ScrollView;Landroid/webkit/WebView;)V

    goto :goto_0

    .line 26
    :cond_1
    invoke-direct {p0}, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->d()V

    .line 27
    iget-object v1, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->i:Landroid/view/View;

    iget-object v3, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->t:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->q:Landroid/widget/ScrollView;

    iget-object v6, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->w:Lcom/beizi/ad/internal/download/BeiZiWebView;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->a(Landroid/widget/TextView;Landroid/view/View;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/ScrollView;Landroid/webkit/WebView;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/widget/TextView;Landroid/view/View;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/ScrollView;Landroid/webkit/WebView;)V
    .locals 2

    .line 28
    sget v0, Lcom/beizi/fusion/R$color;->appinfo_tab_selected_color:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 p1, 0x0

    .line 30
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    const-string p2, "http"

    .line 31
    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/16 v0, 0x8

    if-eqz p2, :cond_0

    const-string p2, ""

    .line 32
    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {p5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    invoke-virtual {p6, p1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    invoke-virtual {p6, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {p4, p1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    invoke-virtual {p5, p1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    invoke-virtual {p6, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->a(I)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v1, "privacy_content_key"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->n:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "title_content_key"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->p:Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "permission_content_key"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->m:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "intro_content_key"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->o:Ljava/lang/String;

    .line 43
    .line 44
    const-string v1, "from_position_key"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->l:I

    .line 51
    .line 52
    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->p:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->b:Landroid/widget/TextView;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->p:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->a:Landroid/widget/ImageView;

    .line 17
    .line 18
    new-instance v1, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity$1;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity$1;-><init>(Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->c:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    new-instance v1, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity$2;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity$2;-><init>(Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->d:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    new-instance v1, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity$3;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity$3;-><init>(Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->e:Landroid/widget/LinearLayout;

    .line 47
    .line 48
    new-instance v1, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity$4;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity$4;-><init>(Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->h:Landroid/widget/TextView;

    .line 2
    .line 3
    sget v1, Lcom/beizi/fusion/R$color;->appinfo_tab_unselected_color:I

    .line 4
    .line 5
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->k:Landroid/view/View;

    .line 13
    .line 14
    const/4 v2, 0x4

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->f:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->i:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->g:Landroid/widget/TextView;

    .line 33
    .line 34
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->j:Landroid/view/View;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->s:Landroid/widget/ScrollView;

    .line 47
    .line 48
    const/16 v1, 0x8

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->y:Lcom/beizi/ad/internal/download/BeiZiWebView;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->v:Landroid/widget/TextView;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->q:Landroid/widget/ScrollView;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->t:Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->w:Lcom/beizi/ad/internal/download/BeiZiWebView;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->r:Landroid/widget/ScrollView;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->u:Landroid/widget/TextView;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->x:Lcom/beizi/ad/internal/download/BeiZiWebView;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    return-void
.end method


# virtual methods
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
    invoke-direct {p0}, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->b()V

    .line 5
    .line 6
    .line 7
    sget p1, Lcom/beizi/fusion/R$layout;->beizi_download_appinfo_activity:I

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->a()V

    .line 13
    .line 14
    .line 15
    iget p1, p0, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->l:I

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->a(I)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;->c()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

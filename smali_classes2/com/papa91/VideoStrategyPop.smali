.class public Lcom/papa91/VideoStrategyPop;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/VideoStrategyPop$VideoPopListener;
    }
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private handler:Landroid/os/Handler;

.field private handlerTime:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mVideoPopListener:Lcom/papa91/VideoStrategyPop$VideoPopListener;

.field private popCloseIv:Landroid/widget/ImageView;

.field private popTimeTv:Landroid/widget/TextView;

.field private times:I

.field private url:Ljava/lang/String;

.field private web:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;Lcom/papa91/VideoStrategyPop$VideoPopListener;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/papa91/VideoStrategyPop;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v0, Lcom/papa91/VideoStrategyPop$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/papa91/VideoStrategyPop$1;-><init>(Lcom/papa91/VideoStrategyPop;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/papa91/VideoStrategyPop;->handlerTime:Landroid/os/Handler;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/papa91/VideoStrategyPop;->context:Landroid/app/Activity;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/papa91/VideoStrategyPop;->url:Ljava/lang/String;

    .line 21
    .line 22
    const/4 p3, -0x1

    .line 23
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 27
    .line 28
    .line 29
    const/4 p3, 0x0

    .line 30
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 37
    .line 38
    invoke-direct {v0, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    sget v0, Lcom/mgsim/common/R$layout;->dialog_video_strategy_view:I

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p1, v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance p3, Lcom/papa91/VideoStrategyPop$2;

    .line 56
    .line 57
    invoke-direct {p3, p0}, Lcom/papa91/VideoStrategyPop$2;-><init>(Lcom/papa91/VideoStrategyPop;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 61
    .line 62
    .line 63
    iput p2, p0, Lcom/papa91/VideoStrategyPop;->times:I

    .line 64
    .line 65
    iput-object p4, p0, Lcom/papa91/VideoStrategyPop;->mVideoPopListener:Lcom/papa91/VideoStrategyPop$VideoPopListener;

    .line 66
    .line 67
    sget p3, Lcom/mgsim/common/R$id;->web:I

    .line 68
    .line 69
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    check-cast p3, Landroid/webkit/WebView;

    .line 74
    .line 75
    iput-object p3, p0, Lcom/papa91/VideoStrategyPop;->web:Landroid/webkit/WebView;

    .line 76
    .line 77
    sget p3, Lcom/mgsim/common/R$id;->popCloseIv:I

    .line 78
    .line 79
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    check-cast p3, Landroid/widget/ImageView;

    .line 84
    .line 85
    iput-object p3, p0, Lcom/papa91/VideoStrategyPop;->popCloseIv:Landroid/widget/ImageView;

    .line 86
    .line 87
    sget p3, Lcom/mgsim/common/R$id;->popTimeTv:I

    .line 88
    .line 89
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    check-cast p3, Landroid/widget/TextView;

    .line 94
    .line 95
    iput-object p3, p0, Lcom/papa91/VideoStrategyPop;->popTimeTv:Landroid/widget/TextView;

    .line 96
    .line 97
    new-instance p4, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p2, ""

    .line 106
    .line 107
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    iget-object p2, p0, Lcom/papa91/VideoStrategyPop;->popCloseIv:Landroid/widget/ImageView;

    .line 118
    .line 119
    new-instance p3, Lcom/papa91/VideoStrategyPop$3;

    .line 120
    .line 121
    invoke-direct {p3, p0}, Lcom/papa91/VideoStrategyPop$3;-><init>(Lcom/papa91/VideoStrategyPop;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    invoke-direct {p0}, Lcom/papa91/VideoStrategyPop;->setWeb()V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/papa91/VideoStrategyPop;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/VideoStrategyPop;->times:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$020(Lcom/papa91/VideoStrategyPop;I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/VideoStrategyPop;->times:I

    .line 2
    .line 3
    sub-int/2addr v0, p1

    .line 4
    iput v0, p0, Lcom/papa91/VideoStrategyPop;->times:I

    .line 5
    .line 6
    return v0
.end method

.method static synthetic access$100(Lcom/papa91/VideoStrategyPop;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/VideoStrategyPop;->popTimeTv:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/papa91/VideoStrategyPop;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/VideoStrategyPop;->popCloseIv:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/papa91/VideoStrategyPop;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/VideoStrategyPop;->handlerTime:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/papa91/VideoStrategyPop;)Lcom/papa91/VideoStrategyPop$VideoPopListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/VideoStrategyPop;->mVideoPopListener:Lcom/papa91/VideoStrategyPop$VideoPopListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private setWeb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/VideoStrategyPop;->web:Landroid/webkit/WebView;

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
    iget-object v0, p0, Lcom/papa91/VideoStrategyPop;->web:Landroid/webkit/WebView;

    .line 12
    .line 13
    new-instance v1, Lcom/papa91/VideoStrategyPop$4;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/papa91/VideoStrategyPop$4;-><init>(Lcom/papa91/VideoStrategyPop;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/papa91/VideoStrategyPop;->web:Landroid/webkit/WebView;

    .line 22
    .line 23
    const-string v1, "yqw"

    .line 24
    .line 25
    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/papa91/VideoStrategyPop;->web:Landroid/webkit/WebView;

    .line 29
    .line 30
    new-instance v1, Lcom/papa91/VideoStrategyPop$5;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/papa91/VideoStrategyPop$5;-><init>(Lcom/papa91/VideoStrategyPop;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "file:///android_asset/h5video.html?videoUrl="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/papa91/VideoStrategyPop;->url:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/papa91/VideoStrategyPop;->web:Landroid/webkit/WebView;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/VideoStrategyPop;->web:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onMyPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/VideoStrategyPop;->web:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa91/VideoStrategyPop;->web:Landroid/webkit/WebView;

    .line 9
    .line 10
    const-string v1, "javascript:onPagePause();"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onMyResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/VideoStrategyPop;->web:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa91/VideoStrategyPop;->web:Landroid/webkit/WebView;

    .line 9
    .line 10
    const-string v1, "javascript:onPageFinished();"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public videoEndFunction()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/VideoStrategyPop;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/papa91/VideoStrategyPop$6;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/papa91/VideoStrategyPop$6;-><init>(Lcom/papa91/VideoStrategyPop;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v2, 0x3e8

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

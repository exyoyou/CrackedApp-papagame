.class public final Lcom/windmill/gdt/a;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/gdt/a$a;
    }
.end annotation


# instance fields
.field a:Landroid/widget/Button;

.field private b:I

.field private c:Lcom/qq/e/comm/compliance/DownloadConfirmCallBack;

.field private d:Landroid/webkit/WebView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/widget/ProgressBar;

.field private h:Landroid/widget/Button;

.field private i:Ljava/lang/String;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/comm/compliance/DownloadConfirmCallBack;)V
    .locals 1

    sget v0, Lcom/windmill/gdt/R$style;->DownloadConfirmDialogFullScreen:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/windmill/gdt/a;->j:Z

    iput-object p3, p0, Lcom/windmill/gdt/a;->c:Lcom/qq/e/comm/compliance/DownloadConfirmCallBack;

    iput-object p2, p0, Lcom/windmill/gdt/a;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/windmill/gdt/a;->b:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    sget p2, Lcom/windmill/gdt/R$layout;->download_confirm_dialog:I

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(I)V

    sget p2, Lcom/windmill/gdt/R$id;->download_confirm_root:I

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget p3, p0, Lcom/windmill/gdt/a;->b:I

    if-ne p3, p1, :cond_0

    sget p3, Lcom/windmill/gdt/R$drawable;->download_confirm_background_portrait:I

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    sget p3, Lcom/windmill/gdt/R$drawable;->download_confirm_background_landscape:I

    goto :goto_0

    :cond_1
    :goto_1
    sget p2, Lcom/windmill/gdt/R$id;->download_confirm_close:I

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/windmill/gdt/a;->e:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/windmill/gdt/R$id;->download_confirm_reload_button:I

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/windmill/gdt/a;->h:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/windmill/gdt/R$id;->download_confirm_confirm:I

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/windmill/gdt/a;->a:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/windmill/gdt/R$id;->download_confirm_progress_bar:I

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/windmill/gdt/a;->g:Landroid/widget/ProgressBar;

    sget p2, Lcom/windmill/gdt/R$id;->download_confirm_content:I

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/windmill/gdt/a;->f:Landroid/view/ViewGroup;

    sget p2, Lcom/windmill/gdt/R$id;->download_confirm_holder:I

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    new-instance p3, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/windmill/gdt/a;->d:Landroid/webkit/WebView;

    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object p1, p0, Lcom/windmill/gdt/a;->d:Landroid/webkit/WebView;

    new-instance p3, Lcom/windmill/gdt/a$a;

    invoke-direct {p3, p0}, Lcom/windmill/gdt/a$a;-><init>(Lcom/windmill/gdt/a;)V

    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/windmill/gdt/a;->d:Landroid/webkit/WebView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/windmill/gdt/a;->g:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/windmill/gdt/a;->f:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/windmill/gdt/a;->h:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/windmill/gdt/a;->h:Landroid/widget/Button;

    const-string v0, "\u62b1\u6b49\uff0c\u5e94\u7528\u4fe1\u606f\u83b7\u53d6\u5931\u8d25"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/windmill/gdt/a;->h:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/windmill/gdt/a;->j:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "download confirm load url:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/a;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/windmill/gdt/a;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/windmill/gdt/a;->j:Z

    return p0
.end method

.method static synthetic b(Lcom/windmill/gdt/a;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/windmill/gdt/a;->g:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic c(Lcom/windmill/gdt/a;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/windmill/gdt/a;->h:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic d(Lcom/windmill/gdt/a;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/windmill/gdt/a;->f:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic e(Lcom/windmill/gdt/a;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/windmill/gdt/a;->j:Z

    return v0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    iget-object v0, p0, Lcom/windmill/gdt/a;->c:Lcom/qq/e/comm/compliance/DownloadConfirmCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qq/e/comm/compliance/DownloadConfirmCallBack;->onCancel()V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/a;->e:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/windmill/gdt/a;->c:Lcom/qq/e/comm/compliance/DownloadConfirmCallBack;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/qq/e/comm/compliance/DownloadConfirmCallBack;->onCancel()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/windmill/gdt/a;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/windmill/gdt/a;->c:Lcom/qq/e/comm/compliance/DownloadConfirmCallBack;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/qq/e/comm/compliance/DownloadConfirmCallBack;->onConfirm()V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/windmill/gdt/a;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/windmill/gdt/a;->i:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/windmill/gdt/a;->a(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method protected final onStart()V
    .locals 7

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/windmill/gdt/a;->b:I

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-ne v4, v5, :cond_0

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-double v0, v0

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double v0, v0, v4

    double-to-int v0, v0

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x50

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget v0, Lcom/windmill/gdt/R$style;->DownloadConfirmDialogAnimationUp:I

    :goto_0
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne v4, v0, :cond_1

    int-to-double v0, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v4

    double-to-int v0, v0

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, 0x5

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget v0, Lcom/windmill/gdt/R$style;->DownloadConfirmDialogAnimationRight:I

    goto :goto_0

    :cond_1
    :goto_1
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v0, Lcom/windmill/gdt/a$1;

    invoke-direct {v0, p0}, Lcom/windmill/gdt/a$1;-><init>(Lcom/windmill/gdt/a;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method protected final onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object v0, p0, Lcom/windmill/gdt/a;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/windmill/sdk/utils/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/windmill/gdt/a;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/windmill/gdt/a;->d:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method public final show()V
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    :try_start_0
    iget-object v0, p0, Lcom/windmill/gdt/a;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/windmill/gdt/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load error url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/windmill/gdt/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.class final Lcom/windmill/gdt/a$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/gdt/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/gdt/a;


# direct methods
.method constructor <init>(Lcom/windmill/gdt/a;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gdt/a$a;->a:Lcom/windmill/gdt/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/gdt/a$a;->a:Lcom/windmill/gdt/a;

    invoke-static {p1}, Lcom/windmill/gdt/a;->a(Lcom/windmill/gdt/a;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/windmill/gdt/a$a;->a:Lcom/windmill/gdt/a;

    invoke-static {p1}, Lcom/windmill/gdt/a;->b(Lcom/windmill/gdt/a;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/windmill/gdt/a$a;->a:Lcom/windmill/gdt/a;

    invoke-static {p1}, Lcom/windmill/gdt/a;->c(Lcom/windmill/gdt/a;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/windmill/gdt/a$a;->a:Lcom/windmill/gdt/a;

    invoke-static {p1}, Lcom/windmill/gdt/a;->d(Lcom/windmill/gdt/a;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "doConfirmWithInfo onReceivedError:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/gdt/a$a;->a:Lcom/windmill/gdt/a;

    invoke-static {p1}, Lcom/windmill/gdt/a;->e(Lcom/windmill/gdt/a;)Z

    iget-object p1, p0, Lcom/windmill/gdt/a$a;->a:Lcom/windmill/gdt/a;

    invoke-static {p1}, Lcom/windmill/gdt/a;->b(Lcom/windmill/gdt/a;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/windmill/gdt/a$a;->a:Lcom/windmill/gdt/a;

    invoke-static {p1}, Lcom/windmill/gdt/a;->d(Lcom/windmill/gdt/a;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/windmill/gdt/a$a;->a:Lcom/windmill/gdt/a;

    invoke-static {p1}, Lcom/windmill/gdt/a;->c(Lcom/windmill/gdt/a;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/windmill/gdt/a$a;->a:Lcom/windmill/gdt/a;

    invoke-static {p1}, Lcom/windmill/gdt/a;->c(Lcom/windmill/gdt/a;)Landroid/widget/Button;

    move-result-object p1

    const-string p2, "\u91cd\u65b0\u52a0\u8f7d"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/windmill/gdt/a$a;->a:Lcom/windmill/gdt/a;

    invoke-static {p1}, Lcom/windmill/gdt/a;->c(Lcom/windmill/gdt/a;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

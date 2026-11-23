.class Lcom/windmill/sdk/widget/InterstitialBaseView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/widget/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/widget/InterstitialBaseView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/widget/InterstitialBaseView;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/widget/InterstitialBaseView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$8;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "InterstitialBaseView"

    const-string v1, "---\u5012\u8ba1\u65f6--onFinish "

    .line 16
    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$8;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    iget-object v0, v0, Lcom/windmill/sdk/widget/InterstitialBaseView;->k:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v2, "\u5173\u95ed"

    .line 18
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$8;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    iget-object v0, v0, Lcom/windmill/sdk/widget/InterstitialBaseView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$8;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    invoke-static {v0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->b(Lcom/windmill/sdk/widget/InterstitialBaseView;)V

    .line 21
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$8;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    iget-object v0, v0, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    invoke-virtual {v0}, Lcom/windmill/sdk/widget/a;->getNativeIsAutoClose()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 22
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$8;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    invoke-static {v0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a(Lcom/windmill/sdk/widget/InterstitialBaseView;)V

    :cond_1
    return-void
.end method

.method public a(J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation

    const-wide/16 v0, 0x3e8

    .line 1
    div-long/2addr p1, v0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    long-to-int p2, p1

    .line 2
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$8;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    iget-object v0, p1, Lcom/windmill/sdk/widget/InterstitialBaseView;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p1, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/windmill/sdk/widget/a;->getNativeSkipTime()I

    move-result p1

    if-gt p2, p1, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8df3\u8fc7\uff5c"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string p2, "\uff5c"

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    .line 6
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#80FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v2, p2, 0x1

    const/16 v3, 0x21

    .line 8
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 9
    iget-object p2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$8;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    iget-object p2, p2, Lcom/windmill/sdk/widget/InterstitialBaseView;->k:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    iget-object p2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$8;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    iget-object p2, p2, Lcom/windmill/sdk/widget/InterstitialBaseView;->k:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$8;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    iget-object p1, p1, Lcom/windmill/sdk/widget/InterstitialBaseView;->j:Landroid/widget/LinearLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$8;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    iget-object p1, p1, Lcom/windmill/sdk/widget/InterstitialBaseView;->k:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 13
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$8;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    iget-object p1, p1, Lcom/windmill/sdk/widget/InterstitialBaseView;->j:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 15
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$8;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    invoke-static {p1}, Lcom/windmill/sdk/widget/InterstitialBaseView;->b(Lcom/windmill/sdk/widget/InterstitialBaseView;)V

    return-void
.end method

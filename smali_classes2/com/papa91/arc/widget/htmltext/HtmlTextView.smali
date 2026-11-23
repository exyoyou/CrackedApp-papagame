.class public Lcom/papa91/arc/widget/htmltext/HtmlTextView;
.super Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;
.source "SourceFile"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "HtmlTextView"


# instance fields
.field public blockQuoteBackgroundColor:I

.field public blockQuoteGap:F

.field public blockQuoteStripColor:I

.field public blockQuoteStripWidth:F

.field private clickableTableSpan:Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private drawTableLinkSpan:Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private indent:F

.field private onClickATagListener:Lcom/papa91/arc/widget/htmltext/OnClickATagListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private removeTrailingWhiteSpace:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    invoke-direct {p0, p1}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/ppsspp/ppsspp/R$color;->white:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->blockQuoteBackgroundColor:I

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/ppsspp/ppsspp/R$color;->black:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->blockQuoteStripColor:I

    const/high16 p1, 0x41200000    # 10.0f

    .line 18
    iput p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->blockQuoteStripWidth:F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 19
    iput p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->blockQuoteGap:F

    const/high16 p1, 0x41c00000    # 24.0f

    .line 20
    iput p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->indent:F

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->removeTrailingWhiteSpace:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/ppsspp/ppsspp/R$color;->white:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->blockQuoteBackgroundColor:I

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/ppsspp/ppsspp/R$color;->black:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->blockQuoteStripColor:I

    const/high16 p1, 0x41200000    # 10.0f

    .line 11
    iput p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->blockQuoteStripWidth:F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 12
    iput p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->blockQuoteGap:F

    const/high16 p1, 0x41c00000    # 24.0f

    .line 13
    iput p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->indent:F

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->removeTrailingWhiteSpace:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/ppsspp/ppsspp/R$color;->white:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->blockQuoteBackgroundColor:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/ppsspp/ppsspp/R$color;->black:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->blockQuoteStripColor:I

    const/high16 p1, 0x41200000    # 10.0f

    .line 4
    iput p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->blockQuoteStripWidth:F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 5
    iput p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->blockQuoteGap:F

    const/high16 p1, 0x41c00000    # 24.0f

    .line 6
    iput p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->indent:F

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->removeTrailingWhiteSpace:Z

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/arc/widget/htmltext/HtmlTextView;)Lcom/papa91/arc/widget/htmltext/OnClickATagListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->onClickATagListener:Lcom/papa91/arc/widget/htmltext/OnClickATagListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Scanner;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "\\A"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/util/Scanner;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string p0, ""

    .line 24
    .line 25
    :goto_0
    return-object p0
.end method

.method private replaceQuoteSpans(Landroid/text/Spanned;)V
    .locals 11

    .line 1
    check-cast p1, Landroid/text/Spannable;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    const-class v1, Landroid/text/style/QuoteSpan;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, [Landroid/text/style/QuoteSpan;

    .line 17
    .line 18
    array-length v1, v0

    .line 19
    :goto_0
    if-ge v2, v1, :cond_0

    .line 20
    .line 21
    aget-object v3, v0, v2

    .line 22
    .line 23
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    new-instance v3, Lcom/papa91/arc/widget/htmltext/DesignQuoteSpan;

    .line 39
    .line 40
    iget v7, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->blockQuoteBackgroundColor:I

    .line 41
    .line 42
    iget v8, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->blockQuoteStripColor:I

    .line 43
    .line 44
    iget v9, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->blockQuoteStripWidth:F

    .line 45
    .line 46
    iget v10, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->blockQuoteGap:F

    .line 47
    .line 48
    invoke-direct {v3, v7, v8, v9, v10}, Lcom/papa91/arc/widget/htmltext/DesignQuoteSpan;-><init>(IIFF)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v3, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public setClickableTableSpan(Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;)V
    .locals 0
    .param p1    # Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->clickableTableSpan:Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;

    .line 2
    .line 3
    return-void
.end method

.method public setDrawTableLinkSpan(Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;)V
    .locals 0
    .param p1    # Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->drawTableLinkSpan:Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;

    .line 2
    .line 3
    return-void
.end method

.method public setHtml(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setHtml(ILandroid/text/Html$ImageGetter;)V

    return-void
.end method

.method public setHtml(ILandroid/text/Html$ImageGetter;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .param p2    # Landroid/text/Html$ImageGetter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;)V

    return-void
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;)V

    return-void
.end method

.method public setHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/text/Html$ImageGetter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    iget-object v2, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->clickableTableSpan:Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;

    iget-object v3, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->drawTableLinkSpan:Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;

    new-instance v4, Lcom/papa91/arc/widget/htmltext/HtmlTextView$1;

    invoke-direct {v4, p0}, Lcom/papa91/arc/widget/htmltext/HtmlTextView$1;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlTextView;)V

    iget v5, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->indent:F

    iget-boolean v6, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->removeTrailingWhiteSpace:Z

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lcom/papa91/arc/widget/htmltext/HtmlFormatter;->formatHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;Lcom/papa91/arc/widget/htmltext/HtmlFormatter$TagClickListenerProvider;FZ)Landroid/text/Spanned;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->replaceQuoteSpans(Landroid/text/Spanned;)V

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->clickableTableSpan:Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->onClickATagListener:Lcom/papa91/arc/widget/htmltext/OnClickATagListener;

    if-eqz p1, :cond_1

    .line 9
    :cond_0
    invoke-static {}, Lcom/papa91/arc/widget/htmltext/LocalLinkMovementMethod;->getInstance()Lcom/papa91/arc/widget/htmltext/LocalLinkMovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    return-void
.end method

.method public setListIndentPx(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->indent:F

    .line 2
    .line 3
    return-void
.end method

.method public setOnClickATagListener(Lcom/papa91/arc/widget/htmltext/OnClickATagListener;)V
    .locals 0
    .param p1    # Lcom/papa91/arc/widget/htmltext/OnClickATagListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->onClickATagListener:Lcom/papa91/arc/widget/htmltext/OnClickATagListener;

    .line 2
    .line 3
    return-void
.end method

.method public setRemoveTrailingWhiteSpace(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->removeTrailingWhiteSpace:Z

    .line 2
    .line 3
    return-void
.end method

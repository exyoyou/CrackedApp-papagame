.class public Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private clickableTableSpan:Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;

.field private drawTableLinkSpan:Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;

.field private html:Ljava/lang/String;

.field private imageGetter:Landroid/text/Html$ImageGetter;

.field private indent:F

.field private onClickATagListener:Lcom/papa91/arc/widget/htmltext/OnClickATagListener;

.field private removeTrailingWhiteSpace:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x41c00000    # 24.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;->indent:F

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;->removeTrailingWhiteSpace:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getClickableTableSpan()Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;->clickableTableSpan:Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDrawTableLinkSpan()Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;->drawTableLinkSpan:Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;->html:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImageGetter()Landroid/text/Html$ImageGetter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;->imageGetter:Landroid/text/Html$ImageGetter;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIndent()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;->indent:F

    .line 2
    .line 3
    return v0
.end method

.method public getOnClickATagListener()Lcom/papa91/arc/widget/htmltext/OnClickATagListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;->onClickATagListener:Lcom/papa91/arc/widget/htmltext/OnClickATagListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public isRemoveTrailingWhiteSpace()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;->removeTrailingWhiteSpace:Z

    .line 2
    .line 3
    return v0
.end method

.method public setClickableTableSpan(Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;)Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;
    .locals 0
    .param p1    # Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;->clickableTableSpan:Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDrawTableLinkSpan(Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;)Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;
    .locals 0
    .param p1    # Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;->drawTableLinkSpan:Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;

    .line 2
    .line 3
    return-object p0
.end method

.method public setHtml(Ljava/lang/String;)Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;->html:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setImageGetter(Landroid/text/Html$ImageGetter;)Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;
    .locals 0
    .param p1    # Landroid/text/Html$ImageGetter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;->imageGetter:Landroid/text/Html$ImageGetter;

    .line 2
    .line 3
    return-object p0
.end method

.method public setIndent(F)Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;->indent:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setOnClickATagListener(Lcom/papa91/arc/widget/htmltext/OnClickATagListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;->onClickATagListener:Lcom/papa91/arc/widget/htmltext/OnClickATagListener;

    .line 2
    .line 3
    return-void
.end method

.method public setRemoveTrailingWhiteSpace(Z)Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;->removeTrailingWhiteSpace:Z

    .line 2
    .line 3
    return-object p0
.end method

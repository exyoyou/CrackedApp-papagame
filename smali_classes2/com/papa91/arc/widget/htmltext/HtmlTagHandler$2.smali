.class Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$2;
.super Landroid/text/style/URLSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/Attributes;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;

.field final synthetic val$spannedText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$2;->this$0:Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$2;->val$spannedText:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$2;->this$0:Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->access$1100(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;)Lcom/papa91/arc/widget/htmltext/HtmlFormatter$TagClickListenerProvider;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$2;->this$0:Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->access$1100(Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;)Lcom/papa91/arc/widget/htmltext/HtmlFormatter$TagClickListenerProvider;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/papa91/arc/widget/htmltext/HtmlFormatter$TagClickListenerProvider;->provideTagClickListener()Lcom/papa91/arc/widget/htmltext/OnClickATagListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler$2;->val$spannedText:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v0, p1, v1, v2}, Lcom/papa91/arc/widget/htmltext/OnClickATagListener;->onClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

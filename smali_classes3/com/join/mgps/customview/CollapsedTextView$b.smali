.class Lcom/join/mgps/customview/CollapsedTextView$b;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/CollapsedTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/CollapsedTextView;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/CollapsedTextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/CollapsedTextView$b;->b:Lcom/join/mgps/customview/CollapsedTextView;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/CollapsedTextView;Lcom/join/mgps/customview/CollapsedTextView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/CollapsedTextView$b;-><init>(Lcom/join/mgps/customview/CollapsedTextView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "widget"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/CollapsedTextView$b;->b:Lcom/join/mgps/customview/CollapsedTextView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/customview/CollapsedTextView;->g(Lcom/join/mgps/customview/CollapsedTextView;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/CollapsedTextView$b;->b:Lcom/join/mgps/customview/CollapsedTextView;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, v0}, Lcom/join/mgps/customview/CollapsedTextView;->h(Lcom/join/mgps/customview/CollapsedTextView;Z)Z

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/customview/CollapsedTextView$b;->b:Lcom/join/mgps/customview/CollapsedTextView;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/join/mgps/customview/CollapsedTextView;->i(Lcom/join/mgps/customview/CollapsedTextView;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    xor-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/join/mgps/customview/CollapsedTextView;->j(Lcom/join/mgps/customview/CollapsedTextView;Z)Z

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/customview/CollapsedTextView$b;->b:Lcom/join/mgps/customview/CollapsedTextView;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/join/mgps/customview/CollapsedTextView;->k(Lcom/join/mgps/customview/CollapsedTextView;)Ljava/lang/CharSequence;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ds"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CollapsedTextView$b;->b:Lcom/join/mgps/customview/CollapsedTextView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/CollapsedTextView;->l(Lcom/join/mgps/customview/CollapsedTextView;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/CollapsedTextView$b;->b:Lcom/join/mgps/customview/CollapsedTextView;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/customview/CollapsedTextView;->l(Lcom/join/mgps/customview/CollapsedTextView;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/customview/CollapsedTextView$b;->b:Lcom/join/mgps/customview/CollapsedTextView;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/join/mgps/customview/CollapsedTextView;->m(Lcom/join/mgps/customview/CollapsedTextView;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

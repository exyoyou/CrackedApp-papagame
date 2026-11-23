.class Lcom/join/mgps/customview/CollapsedTextView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/CollapsedTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/TextView$BufferType;

.field final synthetic c:Ljava/lang/CharSequence;

.field final synthetic d:Lcom/join/mgps/customview/CollapsedTextView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/CollapsedTextView;Landroid/widget/TextView$BufferType;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$type",
            "val$text"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/CollapsedTextView$a;->d:Lcom/join/mgps/customview/CollapsedTextView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/CollapsedTextView$a;->b:Landroid/widget/TextView$BufferType;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/customview/CollapsedTextView$a;->c:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CollapsedTextView$a;->d:Lcom/join/mgps/customview/CollapsedTextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/CollapsedTextView$a;->d:Lcom/join/mgps/customview/CollapsedTextView;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/join/mgps/customview/CollapsedTextView$a;->d:Lcom/join/mgps/customview/CollapsedTextView;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    sub-int/2addr v1, v2

    .line 23
    iget-object v2, p0, Lcom/join/mgps/customview/CollapsedTextView$a;->d:Lcom/join/mgps/customview/CollapsedTextView;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    sub-int/2addr v1, v2

    .line 30
    invoke-static {v0, v1}, Lcom/join/mgps/customview/CollapsedTextView;->e(Lcom/join/mgps/customview/CollapsedTextView;I)I

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/customview/CollapsedTextView$a;->d:Lcom/join/mgps/customview/CollapsedTextView;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/join/mgps/customview/CollapsedTextView$a;->b:Landroid/widget/TextView$BufferType;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/join/mgps/customview/CollapsedTextView$a;->c:Ljava/lang/CharSequence;

    .line 38
    .line 39
    invoke-static {v0, v1, v2}, Lcom/join/mgps/customview/CollapsedTextView;->f(Lcom/join/mgps/customview/CollapsedTextView;Landroid/widget/TextView$BufferType;Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

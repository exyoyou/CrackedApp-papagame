.class Lcom/join/mgps/customview/DragView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/DragView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/DragView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/DragView;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/DragView$a;->b:Lcom/join/mgps/customview/DragView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/DragView$a;->b:Lcom/join/mgps/customview/DragView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/join/mgps/customview/DragView;->b(Lcom/join/mgps/customview/DragView;Landroid/view/ViewGroup$MarginLayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/DragView$a;->b:Lcom/join/mgps/customview/DragView;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/customview/DragView;->a(Lcom/join/mgps/customview/DragView;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/join/mgps/customview/DragView$a;->b:Lcom/join/mgps/customview/DragView;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/join/mgps/customview/DragView;->c(Lcom/join/mgps/customview/DragView;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v2, p0, Lcom/join/mgps/customview/DragView$a;->b:Lcom/join/mgps/customview/DragView;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    mul-int/lit8 v2, v2, 0x2

    .line 31
    .line 32
    sub-int/2addr v1, v2

    .line 33
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/customview/DragView$a;->b:Lcom/join/mgps/customview/DragView;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/join/mgps/customview/DragView;->a(Lcom/join/mgps/customview/DragView;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/join/mgps/customview/DragView$a;->b:Lcom/join/mgps/customview/DragView;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/join/mgps/customview/DragView;->d(Lcom/join/mgps/customview/DragView;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iget-object v2, p0, Lcom/join/mgps/customview/DragView$a;->b:Lcom/join/mgps/customview/DragView;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    sub-int/2addr v1, v2

    .line 54
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/customview/DragView$a;->b:Lcom/join/mgps/customview/DragView;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/join/mgps/customview/DragView;->a(Lcom/join/mgps/customview/DragView;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

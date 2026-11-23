.class Lcom/join/mgps/customview/popwindow/view/PopWindowView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/popwindow/view/PopWindowView;->q(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/popwindow/view/PopWindowView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/popwindow/view/PopWindowView;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$a;->b:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$a;->b:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->a(Lcom/join/mgps/customview/popwindow/view/PopWindowView;)Lcom/join/mgps/customview/popwindow/shape/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/customview/popwindow/shape/a;->e()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$a;->b:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->a(Lcom/join/mgps/customview/popwindow/view/PopWindowView;)Lcom/join/mgps/customview/popwindow/shape/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$a;->b:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->a(Lcom/join/mgps/customview/popwindow/view/PopWindowView;)Lcom/join/mgps/customview/popwindow/shape/a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/customview/popwindow/shape/a;->c()Landroid/graphics/Point;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$a;->b:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->b(Lcom/join/mgps/customview/popwindow/view/PopWindowView;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$a;->b:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 41
    .line 42
    invoke-static {v0, p0}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->s(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.class Lcom/join/mgps/customview/ExpandLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ExpandLayout;->setContent(Ljava/lang/String;Lcom/join/mgps/customview/ExpandLayout$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/ExpandLayout;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ExpandLayout;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/ExpandLayout$a;->b:Lcom/join/mgps/customview/ExpandLayout;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout$a;->b:Lcom/join/mgps/customview/ExpandLayout;

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
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout$a;->b:Lcom/join/mgps/customview/ExpandLayout;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v0, v1}, Lcom/join/mgps/customview/ExpandLayout;->b(Lcom/join/mgps/customview/ExpandLayout;I)I

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/join/mgps/customview/ExpandLayout;->c()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v1, "onGlobalLayout,\u63a7\u4ef6\u5bbd\u5ea6 = "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/customview/ExpandLayout$a;->b:Lcom/join/mgps/customview/ExpandLayout;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/join/mgps/customview/ExpandLayout;->a(Lcom/join/mgps/customview/ExpandLayout;)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout$a;->b:Lcom/join/mgps/customview/ExpandLayout;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/join/mgps/customview/ExpandLayout;->a(Lcom/join/mgps/customview/ExpandLayout;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {v0, v1}, Lcom/join/mgps/customview/ExpandLayout;->d(Lcom/join/mgps/customview/ExpandLayout;I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

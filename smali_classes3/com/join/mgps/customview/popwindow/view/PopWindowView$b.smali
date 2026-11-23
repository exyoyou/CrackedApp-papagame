.class public Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/popwindow/view/PopWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->b:Landroid/app/Activity;

    .line 5
    .line 6
    new-instance v0, Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->a:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a()Lcom/join/mgps/customview/popwindow/view/PopWindowView;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->a:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->k(Lcom/join/mgps/customview/popwindow/view/PopWindowView;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->a:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Lcom/join/mgps/customview/popwindow/shape/b;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->a:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->o(Lcom/join/mgps/customview/popwindow/view/PopWindowView;)Lo6/a;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->a:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->c(Lcom/join/mgps/customview/popwindow/view/PopWindowView;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget-object v3, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->a:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 27
    .line 28
    invoke-static {v3}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->d(Lcom/join/mgps/customview/popwindow/view/PopWindowView;)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    iget-object v4, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->a:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 33
    .line 34
    invoke-static {v4}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->e(Lcom/join/mgps/customview/popwindow/view/PopWindowView;)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/join/mgps/customview/popwindow/shape/b;-><init>(Lo6/a;III)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->a:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 42
    .line 43
    invoke-static {v1, v0}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->m(Lcom/join/mgps/customview/popwindow/view/PopWindowView;Lcom/join/mgps/customview/popwindow/shape/a;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->a:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 47
    .line 48
    return-object v0
.end method

.method public b(Z)Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dismissOnTouch"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->a:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->j(Lcom/join/mgps/customview/popwindow/view/PopWindowView;Z)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public c(Z)Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPerformClick"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->a:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->n(Lcom/join/mgps/customview/popwindow/view/PopWindowView;Z)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public d(Lcom/join/mgps/customview/popwindow/shape/a;)Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shape"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->a:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->l(Lcom/join/mgps/customview/popwindow/view/PopWindowView;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->a:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->m(Lcom/join/mgps/customview/popwindow/view/PopWindowView;Lcom/join/mgps/customview/popwindow/shape/a;)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public e(I)Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->a:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->setDropDownHeight(I)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public f(Landroid/view/View;)Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->a:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->setDropDownView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public g(I)Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maskColor"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->a:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->g(Lcom/join/mgps/customview/popwindow/view/PopWindowView;I)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public h(Lcom/join/mgps/customview/popwindow/view/PopWindowView$c;)Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->a:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->setOnDismissListener(Lcom/join/mgps/customview/popwindow/view/PopWindowView$c;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public i(Landroid/view/View;)Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->a:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 2
    .line 3
    new-instance v1, Lo6/b;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lo6/b;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->h(Lcom/join/mgps/customview/popwindow/view/PopWindowView;Lo6/a;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public j(I)Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "padding"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->a:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->i(Lcom/join/mgps/customview/popwindow/view/PopWindowView;I)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public k(I)Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radius"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->a:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->setRadius(I)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public l()Lcom/join/mgps/customview/popwindow/view/PopWindowView;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->a()Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->b:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/join/mgps/customview/popwindow/view/PopWindowView;->f(Lcom/join/mgps/customview/popwindow/view/PopWindowView;Landroid/app/Activity;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/view/PopWindowView$b;->a:Lcom/join/mgps/customview/popwindow/view/PopWindowView;

    .line 11
    .line 12
    return-object v0
.end method

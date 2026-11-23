.class public Lcom/join/mgps/customview/c0;
.super Lcom/join/mgps/customview/v;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/c0$a;
    }
.end annotation


# instance fields
.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field d:Landroid/view/View;

.field private e:Ljava/lang/String;

.field f:Lcom/join/mgps/customview/c0$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/v;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/c0;->init()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public c()Lcom/join/mgps/customview/c0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/c0;->f:Lcom/join/mgps/customview/c0$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Lcom/join/mgps/customview/c0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onGameOperateListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/c0;->f:Lcom/join/mgps/customview/c0$a;

    .line 2
    .line 3
    return-void
.end method

.method public e(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "plugNum"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/mgps/customview/c0;->f(Landroid/view/View;Ljava/lang/String;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public f(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "plugNum",
            "hideReinstall"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/join/mgps/customview/c0;->e:Ljava/lang/String;

    .line 2
    .line 3
    const/16 p2, 0x50

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/join/mgps/customview/v;->showAtLocation(Landroid/view/View;III)V

    .line 7
    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/c0;->b:Landroid/view/View;

    .line 12
    .line 13
    const/16 p2, 0x8

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/customview/c0;->d:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/c0;->b:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/customview/c0;->d:Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method init()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/v;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d07f0

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 22
    .line 23
    .line 24
    const/4 v0, -0x2

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 29
    .line 30
    const v1, 0x7f0a0496

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/join/mgps/customview/c0;->b:Landroid/view/View;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 40
    .line 41
    const v1, 0x7f0a0483

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/join/mgps/customview/c0;->c:Landroid/view/View;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 51
    .line 52
    const v1, 0x7f0a0e61

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/join/mgps/customview/c0;->d:Landroid/view/View;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/customview/c0;->b:Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/customview/c0;->c:Landroid/view/View;

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a0496

    .line 6
    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/customview/v;->dismiss()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/customview/c0;->f:Lcom/join/mgps/customview/c0$a;

    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/customview/c0;->e:Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {p1, v0}, Lcom/join/mgps/customview/c0$a;->b(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const v0, 0x7f0a0483

    .line 24
    .line 25
    .line 26
    if-ne p1, v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/customview/v;->dismiss()V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/customview/c0;->f:Lcom/join/mgps/customview/c0$a;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/customview/c0;->e:Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {p1, v0}, Lcom/join/mgps/customview/c0$a;->a(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const v0, 0x7f0a02f5

    .line 42
    .line 43
    .line 44
    if-ne p1, v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/join/mgps/customview/v;->dismiss()V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    return-void
.end method

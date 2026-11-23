.class public Lcom/join/mgps/customview/d0;
.super Lcom/join/mgps/customview/v;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/d0$a;
    }
.end annotation


# instance fields
.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field d:Landroid/view/View;

.field e:Lcom/join/mgps/customview/d0$a;


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
    invoke-virtual {p0}, Lcom/join/mgps/customview/d0;->init()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public c()Lcom/join/mgps/customview/d0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/d0;->e:Lcom/join/mgps/customview/d0$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Lcom/join/mgps/customview/d0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onGameSettingsListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/d0;->e:Lcom/join/mgps/customview/d0$a;

    .line 2
    .line 3
    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 1
    const/16 v0, 0x50

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/join/mgps/customview/v;->showAtLocation(Landroid/view/View;III)V

    .line 5
    .line 6
    .line 7
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
    const v1, 0x7f0d07f1

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
    const v1, 0x7f0a1513

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/join/mgps/customview/d0;->b:Landroid/view/View;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 40
    .line 41
    const v1, 0x7f0a147b

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/join/mgps/customview/d0;->c:Landroid/view/View;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/customview/v;->parentView:Landroid/view/View;

    .line 51
    .line 52
    const v1, 0x7f0a02f5

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/join/mgps/customview/d0;->d:Landroid/view/View;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/customview/d0;->b:Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/customview/d0;->c:Landroid/view/View;

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/customview/d0;->d:Landroid/view/View;

    .line 72
    .line 73
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
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
    const v0, 0x7f0a1513

    .line 6
    .line 7
    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/d0;->e:Lcom/join/mgps/customview/d0$a;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lcom/join/mgps/customview/d0$a;->b()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/v;->dismiss()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const v0, 0x7f0a147b

    .line 22
    .line 23
    .line 24
    if-ne p1, v0, :cond_3

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/customview/d0;->e:Lcom/join/mgps/customview/d0$a;

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/join/mgps/customview/d0$a;->a()V

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/customview/v;->dismiss()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    const v0, 0x7f0a02f5

    .line 38
    .line 39
    .line 40
    if-ne p1, v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/join/mgps/customview/v;->dismiss()V

    .line 43
    .line 44
    .line 45
    :cond_4
    :goto_0
    return-void
.end method

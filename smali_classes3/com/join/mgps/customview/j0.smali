.class public Lcom/join/mgps/customview/j0;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/LinearLayout;

.field d:Landroid/widget/ImageView;

.field private e:J

.field f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/mgps/customview/j0$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/j0$a;-><init>(Lcom/join/mgps/customview/j0;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/customview/j0;->f:Landroid/os/Handler;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/join/mgps/customview/j0;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const v0, 0x7f0d080c

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const v0, 0x7f0a1a77

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/widget/TextView;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/join/mgps/customview/j0;->b:Landroid/widget/TextView;

    .line 35
    .line 36
    const v0, 0x7f0a138f

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/widget/LinearLayout;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/join/mgps/customview/j0;->c:Landroid/widget/LinearLayout;

    .line 46
    .line 47
    const v0, 0x7f0a1079

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/widget/ImageView;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/join/mgps/customview/j0;->d:Landroid/widget/ImageView;

    .line 57
    .line 58
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    .line 66
    .line 67
    const/16 v0, 0x190

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 70
    .line 71
    .line 72
    const/16 v0, 0x12c

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/j0;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/customview/j0;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic b(Lcom/join/mgps/customview/j0;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/customview/j0;->e:J

    .line 2
    .line 3
    return-wide p1
.end method


# virtual methods
.method public c(Landroid/view/View;)V
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
    iget-object v0, p0, Lcom/join/mgps/customview/j0;->b:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, "\u6ce8\u518c\u6210\u529f  \u5956\u52b1: <font color=\'0xf47500\' >+100\u94dc\u677f</font>&nbsp;&nbsp;<font color=\'0xf47500\' >+100</font>\u7ecf\u9a8c"

    .line 4
    .line 5
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 17
    .line 18
    .line 19
    const/16 v0, 0x51

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/customview/j0;->f:Landroid/os/Handler;

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onDismissListener"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

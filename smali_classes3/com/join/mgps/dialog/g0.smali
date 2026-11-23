.class public Lcom/join/mgps/dialog/g0;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/g0$d;,
        Lcom/join/mgps/dialog/g0$f;,
        Lcom/join/mgps/dialog/g0$e;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/join/mgps/dialog/g0$f;

.field private e:Lcom/join/mgps/dialog/g0$d;

.field private f:Lcom/join/mgps/dialog/g0$e;

.field private g:Ljava/lang/String;

.field private h:Landroid/graphics/Bitmap;

.field private i:Ljava/lang/String;


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

    .line 3
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/g0;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "theme"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string p2, ""

    .line 6
    iput-object p2, p0, Lcom/join/mgps/dialog/g0;->g:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/join/mgps/dialog/g0;->b:Landroid/content/Context;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "cancelable",
            "cancelListener"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dialog/g0;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/g0;)Lcom/join/mgps/dialog/g0$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/g0;->f:Lcom/join/mgps/dialog/g0$e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/dialog/g0;)Lcom/join/mgps/dialog/g0$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/g0;->d:Lcom/join/mgps/dialog/g0$f;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/dialog/g0;)Lcom/join/mgps/dialog/g0$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/g0;->e:Lcom/join/mgps/dialog/g0$d;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/g0;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public e(Lcom/join/mgps/dialog/g0$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickCancle"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/g0;->e:Lcom/join/mgps/dialog/g0$d;

    .line 2
    .line 3
    return-void
.end method

.method public f(Lcom/join/mgps/dialog/g0$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickImage"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/g0;->f:Lcom/join/mgps/dialog/g0$e;

    .line 2
    .line 3
    return-void
.end method

.method public g(Lcom/join/mgps/dialog/g0$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickOK"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/g0;->d:Lcom/join/mgps/dialog/g0$f;

    .line 2
    .line 3
    return-void
.end method

.method public h(Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/g0;->h:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/g0;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d01d5

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0a04c2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/widget/ImageView;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/join/mgps/dialog/g0;->c:Landroid/widget/ImageView;

    .line 20
    .line 21
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/dialog/g0;->h:Landroid/graphics/Bitmap;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/dialog/g0;->c:Landroid/widget/ImageView;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    const p1, 0x7f0a04b6

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/widget/Button;

    .line 43
    .line 44
    const v0, 0x7f0a04b4

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/Button;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/join/mgps/dialog/g0;->i:Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    const-string v2, ""

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_1

    .line 64
    .line 65
    iget-object v1, p0, Lcom/join/mgps/dialog/g0;->i:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/dialog/g0;->c:Landroid/widget/ImageView;

    .line 71
    .line 72
    new-instance v2, Lcom/join/mgps/dialog/g0$a;

    .line 73
    .line 74
    invoke-direct {v2, p0}, Lcom/join/mgps/dialog/g0$a;-><init>(Lcom/join/mgps/dialog/g0;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    new-instance v1, Lcom/join/mgps/dialog/g0$b;

    .line 81
    .line 82
    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/g0$b;-><init>(Lcom/join/mgps/dialog/g0;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Lcom/join/mgps/dialog/g0$c;

    .line 89
    .line 90
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/g0$c;-><init>(Lcom/join/mgps/dialog/g0;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

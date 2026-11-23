.class public Lcom/join/mgps/dialog/v1;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/v1$d;,
        Lcom/join/mgps/dialog/v1$f;,
        Lcom/join/mgps/dialog/v1$e;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/join/mgps/dialog/v1$f;

.field private e:Lcom/join/mgps/dialog/v1$d;

.field private f:Lcom/join/mgps/dialog/v1$e;

.field private g:Ljava/lang/String;

.field private h:Landroid/graphics/Bitmap;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/widget/TextView;


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
    iput-object p1, p0, Lcom/join/mgps/dialog/v1;->g:Ljava/lang/String;

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
    iput-object p2, p0, Lcom/join/mgps/dialog/v1;->g:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/join/mgps/dialog/v1;->b:Landroid/content/Context;

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
    iput-object p1, p0, Lcom/join/mgps/dialog/v1;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/v1;)Lcom/join/mgps/dialog/v1$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/v1;->f:Lcom/join/mgps/dialog/v1$e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/dialog/v1;)Lcom/join/mgps/dialog/v1$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/v1;->d:Lcom/join/mgps/dialog/v1$f;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/dialog/v1;)Lcom/join/mgps/dialog/v1$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/v1;->e:Lcom/join/mgps/dialog/v1$d;

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
    iput-object p1, p0, Lcom/join/mgps/dialog/v1;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public e(Lcom/join/mgps/dialog/v1$d;)V
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
    iput-object p1, p0, Lcom/join/mgps/dialog/v1;->e:Lcom/join/mgps/dialog/v1$d;

    .line 2
    .line 3
    return-void
.end method

.method public f(Lcom/join/mgps/dialog/v1$e;)V
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
    iput-object p1, p0, Lcom/join/mgps/dialog/v1;->f:Lcom/join/mgps/dialog/v1$e;

    .line 2
    .line 3
    return-void
.end method

.method public g(Lcom/join/mgps/dialog/v1$f;)V
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
    iput-object p1, p0, Lcom/join/mgps/dialog/v1;->d:Lcom/join/mgps/dialog/v1$f;

    .line 2
    .line 3
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contextText"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/v1;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public i(Landroid/graphics/Bitmap;)V
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
    iput-object p1, p0, Lcom/join/mgps/dialog/v1;->h:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-void
.end method

.method public j(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/dialog/v1;->g:Ljava/lang/String;

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
    const p1, 0x7f0d078c

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
    iput-object p1, p0, Lcom/join/mgps/dialog/v1;->c:Landroid/widget/ImageView;

    .line 20
    .line 21
    const p1, 0x7f0a04bb

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/widget/TextView;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/join/mgps/dialog/v1;->k:Landroid/widget/TextView;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/dialog/v1;->c:Landroid/widget/ImageView;

    .line 33
    .line 34
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/dialog/v1;->h:Landroid/graphics/Bitmap;

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/dialog/v1;->c:Landroid/widget/ImageView;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/v1;->k:Landroid/widget/TextView;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/dialog/v1;->j:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    const p1, 0x7f0a04b6

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroid/widget/Button;

    .line 63
    .line 64
    const v0, 0x7f0a04b4

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroid/widget/Button;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/join/mgps/dialog/v1;->i:Ljava/lang/String;

    .line 74
    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    const-string v2, ""

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_1

    .line 84
    .line 85
    iget-object v1, p0, Lcom/join/mgps/dialog/v1;->i:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/dialog/v1;->c:Landroid/widget/ImageView;

    .line 91
    .line 92
    new-instance v2, Lcom/join/mgps/dialog/v1$a;

    .line 93
    .line 94
    invoke-direct {v2, p0}, Lcom/join/mgps/dialog/v1$a;-><init>(Lcom/join/mgps/dialog/v1;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    .line 99
    .line 100
    new-instance v1, Lcom/join/mgps/dialog/v1$b;

    .line 101
    .line 102
    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/v1$b;-><init>(Lcom/join/mgps/dialog/v1;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    new-instance v0, Lcom/join/mgps/dialog/v1$c;

    .line 109
    .line 110
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/v1$c;-><init>(Lcom/join/mgps/dialog/v1;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

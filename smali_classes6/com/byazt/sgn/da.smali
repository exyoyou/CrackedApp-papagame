.class public Lcom/byazt/sgn/da;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd3,
        0x48
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/sgn/da$c;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:Landroid/widget/TextView;

.field public da:Landroid/graphics/drawable/Drawable;

.field public i:Ljava/lang/String;

.field public n:Landroid/content/Context;

.field public sl:Lcom/byazt/sgn/da$c;

.field public sp:Ljava/lang/String;

.field public tt:Landroid/widget/TextView;

.field public uj:Landroid/widget/Button;

.field public ve:Landroid/widget/Button;

.field public x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const v0, 0x103000b

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/byazt/vfu/sp;->c(Landroid/app/AlertDialog;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/byazt/sgn/da;->n:Landroid/content/Context;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic c(Lcom/byazt/sgn/da;)Lcom/byazt/sgn/da$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sgn/da;->sl:Lcom/byazt/sgn/da$c;

    return-object p0
.end method

.method private c()V
    .locals 2

    const v0, 0x7e06ff8c

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/sgn/da;->c:Landroid/widget/TextView;

    const v0, 0x7e06fec6

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/sgn/da;->tt:Landroid/widget/TextView;

    const v0, 0x7e06ff27

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/byazt/sgn/da;->ve:Landroid/widget/Button;

    const v0, 0x7e06ffb1

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/byazt/sgn/da;->uj:Landroid/widget/Button;

    .line 6
    iget-object v0, p0, Lcom/byazt/sgn/da;->ve:Landroid/widget/Button;

    new-instance v1, Lcom/byazt/sgn/da$1;

    invoke-direct {v1, p0}, Lcom/byazt/sgn/da$1;-><init>(Lcom/byazt/sgn/da;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/byazt/sgn/da;->uj:Landroid/widget/Button;

    new-instance v1, Lcom/byazt/sgn/da$2;

    invoke-direct {v1, p0}, Lcom/byazt/sgn/da$2;-><init>(Lcom/byazt/sgn/da;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private tt()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/sgn/da;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 2
    iget-object v1, p0, Lcom/byazt/sgn/da;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/byazt/sgn/da;->da:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/byazt/sgn/da;->da:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/byazt/sgn/da;->n:Landroid/content/Context;

    const/high16 v3, 0x42340000    # 45.0f

    invoke-static {v2, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    if-gt v0, v2, :cond_0

    if-ge v0, v2, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    if-gt v1, v2, :cond_2

    if-ge v1, v2, :cond_3

    :cond_2
    move v1, v2

    .line 7
    :cond_3
    iget-object v2, p0, Lcom/byazt/sgn/da;->da:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    iget-object v0, p0, Lcom/byazt/sgn/da;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/byazt/sgn/da;->da:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object v0, p0, Lcom/byazt/sgn/da;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/byazt/sgn/da;->n:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/byazt/sgn/da;->tt:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 11
    iget-object v1, p0, Lcom/byazt/sgn/da;->sp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/byazt/sgn/da;->ve:Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 13
    iget-object v1, p0, Lcom/byazt/sgn/da;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_6
    iget-object v0, p0, Lcom/byazt/sgn/da;->uj:Landroid/widget/Button;

    if-eqz v0, :cond_7

    .line 15
    iget-object v1, p0, Lcom/byazt/sgn/da;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public c(Landroid/content/DialogInterface$OnCancelListener;)Lcom/byazt/sgn/da;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-object p0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Lcom/byazt/sgn/da;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/byazt/sgn/da;->da:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public c(Lcom/byazt/sgn/da$c;)Lcom/byazt/sgn/da;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/byazt/sgn/da;->sl:Lcom/byazt/sgn/da$c;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/sgn/da;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/byazt/sgn/da;->a:Ljava/lang/String;

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/byazt/sgn/da;->n:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/byazt/vfu/a;->b(Landroid/content/Context;)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/byazt/sgn/da;->c()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public show()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/byazt/sgn/da;->tt()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public tt(Ljava/lang/String;)Lcom/byazt/sgn/da;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/byazt/sgn/da;->sp:Ljava/lang/String;

    return-object p0
.end method

.method public uj(Ljava/lang/String;)Lcom/byazt/sgn/da;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sgn/da;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public ve(Ljava/lang/String;)Lcom/byazt/sgn/da;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sgn/da;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

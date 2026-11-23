.class public Lcom/byazt/sgn/a;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd3,
        0x22
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/sgn/a$c;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public c:Lcom/byazt/ff/TTProgressBar;

.field public da:Landroid/view/View;

.field public gt:Landroid/view/View;

.field public i:Landroid/widget/Button;

.field public m:Ljava/lang/String;

.field public my:Z

.field public n:Landroid/widget/TextView;

.field public nu:I

.field public rh:Ljava/lang/String;

.field public sl:Landroid/view/ViewGroup;

.field public sp:Landroid/widget/Button;

.field public t:Landroid/content/Context;

.field public tt:Lcom/byazt/sgn/a$c;

.field public u:Ljava/lang/String;

.field public uj:Landroid/widget/ImageView;

.field public ve:Landroid/view/View$OnClickListener;

.field public x:Landroid/widget/Button;

.field public yp:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/byazt/sgn/a;->nu:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/byazt/sgn/a;->my:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/byazt/sgn/a;->t:Landroid/content/Context;

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic c(Lcom/byazt/sgn/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sgn/a;->t:Landroid/content/Context;

    return-object p0
.end method

.method private n()V
    .locals 1

    const v0, 0x7e06ff75

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/byazt/sgn/a;->sp:Landroid/widget/Button;

    const v0, 0x7e06ffca

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/byazt/sgn/a;->x:Landroid/widget/Button;

    const v0, 0x7e06ff5a

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/sgn/a;->n:Landroid/widget/TextView;

    const v0, 0x7e06ff91

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/sgn/a;->a:Landroid/widget/TextView;

    const v0, 0x7e06ff78

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/byazt/sgn/a;->uj:Landroid/widget/ImageView;

    const v0, 0x7e06ff3f

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/sgn/a;->da:Landroid/view/View;

    const v0, 0x7e06ff89

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/byazt/sgn/a;->sl:Landroid/view/ViewGroup;

    const v0, 0x7e06ff25

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/byazt/sgn/a;->i:Landroid/widget/Button;

    return-void
.end method

.method private uj()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/sgn/a;->n:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/byazt/sgn/a;->yp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/sgn/a;->n:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/byazt/sgn/a;->yp:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/byazt/sgn/a;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/sgn/a;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/sgn/a;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/byazt/sgn/a;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/byazt/sgn/a;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/byazt/sgn/a;->u:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/byazt/sgn/a;->x:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/byazt/sgn/a;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/byazt/sgn/a;->x:Landroid/widget/Button;

    iget-object v3, p0, Lcom/byazt/sgn/a;->z:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/byazt/sgn/a;->x:Landroid/widget/Button;

    const-string v3, "\u786e\u5b9a"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :goto_1
    iget v0, p0, Lcom/byazt/sgn/a;->nu:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    .line 14
    iget-object v3, p0, Lcom/byazt/sgn/a;->x:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/byazt/sgn/a;->sp:Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 16
    iget-object v0, p0, Lcom/byazt/sgn/a;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 17
    iget-object v0, p0, Lcom/byazt/sgn/a;->sp:Landroid/widget/Button;

    iget-object v3, p0, Lcom/byazt/sgn/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/byazt/sgn/a;->sp:Landroid/widget/Button;

    const-string v3, "\u53d6\u6d88"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/byazt/sgn/a;->uj:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 20
    iget-object v3, p0, Lcom/byazt/sgn/a;->rh:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 21
    iget-object v4, p0, Lcom/byazt/sgn/a;->t:Landroid/content/Context;

    const/16 v5, 0x140

    invoke-static {v4, v3, v0, v5}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 22
    iget-object v0, p0, Lcom/byazt/sgn/a;->uj:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 23
    :cond_7
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/byazt/sgn/a;->da:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/byazt/sgn/a;->sp:Landroid/widget/Button;

    if-eqz v3, :cond_a

    .line 25
    iget-boolean v4, p0, Lcom/byazt/sgn/a;->my:Z

    if-eqz v4, :cond_9

    .line 26
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lcom/byazt/sgn/a;->sp:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 28
    :cond_9
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Lcom/byazt/sgn/a;->da:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method private ve()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/sgn/a;->x:Landroid/widget/Button;

    new-instance v1, Lcom/byazt/sgn/a$1;

    invoke-direct {v1, p0}, Lcom/byazt/sgn/a$1;-><init>(Lcom/byazt/sgn/a;)V

    const-string v2, "positiveBn"

    invoke-static {v0, v1, v2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/byazt/sgn/a;->sp:Landroid/widget/Button;

    new-instance v1, Lcom/byazt/sgn/a$2;

    invoke-direct {v1, p0}, Lcom/byazt/sgn/a$2;-><init>(Lcom/byazt/sgn/a;)V

    const-string v2, "negtiveBn"

    invoke-static {v0, v1, v2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/byazt/sgn/a;->i:Landroid/widget/Button;

    new-instance v1, Lcom/byazt/sgn/a$3;

    invoke-direct {v1, p0}, Lcom/byazt/sgn/a$3;-><init>(Lcom/byazt/sgn/a;)V

    const-string v2, "dialog_change_btn"

    invoke-static {v0, v1, v2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(I)Lcom/byazt/sgn/a;
    .locals 0

    .line 5
    iput p1, p0, Lcom/byazt/sgn/a;->nu:I

    return-object p0
.end method

.method public c(Landroid/view/View$OnClickListener;)Lcom/byazt/sgn/a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/sgn/a;->ve:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public c(Landroid/view/View;)Lcom/byazt/sgn/a;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/sgn/a;->gt:Landroid/view/View;

    return-object p0
.end method

.method public c(Lcom/byazt/sgn/a$c;)Lcom/byazt/sgn/a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/sgn/a;->tt:Lcom/byazt/sgn/a$c;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/sgn/a;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/sgn/a;->u:Ljava/lang/String;

    return-object p0
.end method

.method public c()V
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/byazt/sgn/a;->sl:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/sgn/a;->c:Lcom/byazt/ff/TTProgressBar;

    if-nez v0, :cond_1

    .line 9
    :try_start_0
    new-instance v0, Lcom/byazt/ff/TTProgressBar;

    iget-object v1, p0, Lcom/byazt/sgn/a;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/byazt/ff/TTProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byazt/sgn/a;->c:Lcom/byazt/ff/TTProgressBar;

    .line 10
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0xf0

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 11
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 12
    iget-object v1, p0, Lcom/byazt/sgn/a;->c:Lcom/byazt/ff/TTProgressBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v1, "#77000000"

    .line 14
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 15
    iget-object v1, p0, Lcom/byazt/sgn/a;->t:Landroid/content/Context;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 16
    iget-object v1, p0, Lcom/byazt/sgn/a;->c:Lcom/byazt/ff/TTProgressBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 17
    iget-object v0, p0, Lcom/byazt/sgn/a;->t:Landroid/content/Context;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v0

    .line 18
    iget-object v1, p0, Lcom/byazt/sgn/a;->c:Lcom/byazt/ff/TTProgressBar;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 19
    iget-object v0, p0, Lcom/byazt/sgn/a;->t:Landroid/content/Context;

    const-string v1, "tt_normalscreen_loading"

    new-instance v2, Lcom/byazt/sgn/a$4;

    invoke-direct {v2, p0}, Lcom/byazt/sgn/a$4;-><init>(Lcom/byazt/sgn/a;)V

    const/16 v3, 0x140

    invoke-static {v0, v1, v2, v3}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/qr/c;I)V

    .line 20
    iget-object v0, p0, Lcom/byazt/sgn/a;->sl:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/byazt/sgn/a;->c:Lcom/byazt/ff/TTProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/byazt/sgn/a;->sl:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public n(Ljava/lang/String;)Lcom/byazt/sgn/a;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/byazt/sgn/a;->rh:Ljava/lang/String;

    return-object p0
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/byazt/sgn/a;->gt:Landroid/view/View;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/byazt/sgn/a;->t:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/byazt/vfu/a;->q(Landroid/content/Context;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/byazt/sgn/a;->n()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/byazt/sgn/a;->uj()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/byazt/sgn/a;->ve()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public show()V
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/byazt/sgn/a;->uj()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    :catch_0
    return-void
.end method

.method public tt(Ljava/lang/String;)Lcom/byazt/sgn/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sgn/a;->yp:Ljava/lang/String;

    return-object p0
.end method

.method public tt()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/sgn/a;->sl:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public uj(Ljava/lang/String;)Lcom/byazt/sgn/a;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/byazt/sgn/a;->m:Ljava/lang/String;

    return-object p0
.end method

.method public ve(Ljava/lang/String;)Lcom/byazt/sgn/a;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/sgn/a;->z:Ljava/lang/String;

    return-object p0
.end method

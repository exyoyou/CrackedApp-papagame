.class public Lcom/airsaid/pickerviewlibrary/c;
.super Lcom/airsaid/pickerviewlibrary/widget/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airsaid/pickerviewlibrary/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/airsaid/pickerviewlibrary/widget/a;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private o:Landroid/content/Context;

.field private p:Lcom/airsaid/pickerviewlibrary/c$a;

.field private q:Lcom/airsaid/pickerviewlibrary/widget/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airsaid/pickerviewlibrary/widget/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/Button;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/airsaid/pickerviewlibrary/widget/a;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/c;->o:Landroid/content/Context;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/airsaid/pickerviewlibrary/c;->o()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->o:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/airsaid/pickerviewlibrary/R$layout;->pickerview_options:I

    .line 8
    .line 9
    iget-object v2, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->d:Landroid/view/ViewGroup;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 15
    .line 16
    sget v1, Lcom/airsaid/pickerviewlibrary/R$id;->optionspicker:I

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/airsaid/pickerviewlibrary/widget/a;->d(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Lcom/airsaid/pickerviewlibrary/widget/b;-><init>(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->q:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 26
    .line 27
    sget v0, Lcom/airsaid/pickerviewlibrary/R$id;->rlt_head_view:I

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/airsaid/pickerviewlibrary/widget/a;->d(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->u:Landroid/view/View;

    .line 34
    .line 35
    sget v0, Lcom/airsaid/pickerviewlibrary/R$id;->tvTitle:I

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/airsaid/pickerviewlibrary/widget/a;->d(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/TextView;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->t:Landroid/widget/TextView;

    .line 44
    .line 45
    sget v0, Lcom/airsaid/pickerviewlibrary/R$id;->btnSubmit:I

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/airsaid/pickerviewlibrary/widget/a;->d(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/Button;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->r:Landroid/widget/Button;

    .line 54
    .line 55
    sget v0, Lcom/airsaid/pickerviewlibrary/R$id;->btnCancel:I

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/airsaid/pickerviewlibrary/widget/a;->d(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/widget/Button;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->s:Landroid/widget/Button;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->r:Landroid/widget/Button;

    .line 66
    .line 67
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->s:Landroid/widget/Button;

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public A(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "TT;>;>;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "TT;>;>;>;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->q:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/airsaid/pickerviewlibrary/widget/b;->q(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public B(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "TT;>;>;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->q:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/airsaid/pickerviewlibrary/widget/b;->q(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public C(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->q:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1, v1}, Lcom/airsaid/pickerviewlibrary/widget/b;->j(III)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public D(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->q:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Lcom/airsaid/pickerviewlibrary/widget/b;->j(III)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public E(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->q:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/airsaid/pickerviewlibrary/widget/b;->j(III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->r:Landroid/widget/Button;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public G(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->r:Landroid/widget/Button;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public H(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->r:Landroid/widget/Button;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public I(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->q:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/b;->s(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public J(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->t:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public K(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->t:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public L(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->t:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget v0, Lcom/airsaid/pickerviewlibrary/R$id;->btnSubmit:I

    .line 6
    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/c;->p:Lcom/airsaid/pickerviewlibrary/c$a;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/c;->q:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/airsaid/pickerviewlibrary/widget/b;->g()[I

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->p:Lcom/airsaid/pickerviewlibrary/c$a;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    aget v1, p1, v1

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    aget v2, p1, v2

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    aget p1, p1, v3

    .line 29
    .line 30
    invoke-interface {v0, v1, v2, p1}, Lcom/airsaid/pickerviewlibrary/c$a;->a(III)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/airsaid/pickerviewlibrary/widget/a;->b()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    sget v0, Lcom/airsaid/pickerviewlibrary/R$id;->btnCancel:I

    .line 38
    .line 39
    if-ne p1, v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/airsaid/pickerviewlibrary/widget/a;->b()V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->s:Landroid/widget/Button;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public q(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->s:Landroid/widget/Button;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public r(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->s:Landroid/widget/Button;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public s(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->q:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/b;->k(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public t(ZZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->q:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/airsaid/pickerviewlibrary/widget/b;->l(ZZZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public u(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->u:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->q:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1, v1}, Lcom/airsaid/pickerviewlibrary/widget/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->q:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Lcom/airsaid/pickerviewlibrary/widget/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->q:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/airsaid/pickerviewlibrary/widget/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public y(Lcom/airsaid/pickerviewlibrary/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/c;->p:Lcom/airsaid/pickerviewlibrary/c$a;

    .line 2
    .line 3
    return-void
.end method

.method public z(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/c;->q:Lcom/airsaid/pickerviewlibrary/widget/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, p1, v1, v1, v2}, Lcom/airsaid/pickerviewlibrary/widget/b;->q(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

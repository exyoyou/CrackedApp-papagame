.class public Lcom/join/mgps/dialog/h2;
.super Lcom/join/mgps/dialog/p;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/h2$b;
    }
.end annotation


# instance fields
.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/CheckBox;

.field private p:Lcom/join/mgps/dialog/h2$b;

.field private q:Landroid/os/CountDownTimer;

.field private r:Z

.field private s:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const v0, 0x7f13015d

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/dialog/h2;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "themeResId"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/dialog/p;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/dialog/h2;->r:Z

    const p2, 0x7f0d022b

    .line 4
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(I)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/p;->g(Z)V

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/dialog/h2;->s:Landroid/os/Handler;

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/dialog/h2;->q()V

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/dialog/h2;->t()V

    return-void
.end method

.method public static synthetic m(Lcom/join/mgps/dialog/h2;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/dialog/h2;->r(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static synthetic n(Lcom/join/mgps/dialog/h2;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/h2;->n:Landroid/widget/Button;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Lcom/join/mgps/dialog/h2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/dialog/h2;->r:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic p(Lcom/join/mgps/dialog/h2;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/h2;->s:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method private q()V
    .locals 1

    .line 1
    const v0, 0x7f0a1a48

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/dialog/h2;->k:Landroid/widget/TextView;

    .line 11
    .line 12
    const v0, 0x7f0a1941

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/dialog/h2;->l:Landroid/widget/TextView;

    .line 22
    .line 23
    const v0, 0x7f0a0a22

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/ImageView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/dialog/h2;->m:Landroid/widget/ImageView;

    .line 33
    .line 34
    const v0, 0x7f0a02b0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/Button;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/dialog/h2;->n:Landroid/widget/Button;

    .line 44
    .line 45
    const v0, 0x7f0a035c

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/CheckBox;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/dialog/h2;->o:Landroid/widget/CheckBox;

    .line 55
    .line 56
    return-void
.end method

.method private synthetic r(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/h2;->p:Lcom/join/mgps/dialog/h2$b;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1, p2}, Lcom/join/mgps/dialog/h2$b;->a(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/h2;->n:Landroid/widget/Button;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/dialog/h2;->m:Landroid/widget/ImageView;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/dialog/h2;->o:Landroid/widget/CheckBox;

    .line 12
    .line 13
    new-instance v1, Lcom/join/mgps/dialog/f2;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/f2;-><init>(Lcom/join/mgps/dialog/h2;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
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
    move-result v0

    .line 5
    const v1, 0x7f0a02b0

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/dialog/p;->dismiss()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/dialog/h2;->p:Lcom/join/mgps/dialog/h2$b;

    .line 14
    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/join/mgps/dialog/h2$b;->onConfirm()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const v0, 0x7f0a0a22

    .line 26
    .line 27
    .line 28
    if-ne p1, v0, :cond_3

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/join/mgps/dialog/h2;->r:Z

    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/dialog/h2;->p:Lcom/join/mgps/dialog/h2$b;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    invoke-interface {p1}, Lcom/join/mgps/dialog/h2$b;->onClose()V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/h2;->q:Landroid/os/CountDownTimer;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/dialog/p;->dismiss()V

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_0
    return-void
.end method

.method public s(Ljava/lang/CharSequence;)Lcom/join/mgps/dialog/h2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/h2;->n:Landroid/widget/Button;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public show()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/join/mgps/dialog/p;->show()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/dialog/h2;->n:Landroid/widget/Button;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/dialog/h2;->q:Landroid/os/CountDownTimer;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/join/mgps/dialog/h2$a;

    .line 15
    .line 16
    const-wide/16 v3, 0x1388

    .line 17
    .line 18
    const-wide/16 v5, 0x3e8

    .line 19
    .line 20
    move-object v1, v0

    .line 21
    move-object v2, p0

    .line 22
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/dialog/h2$a;-><init>(Lcom/join/mgps/dialog/h2;JJ)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/dialog/h2;->q:Landroid/os/CountDownTimer;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public u(Lcom/join/mgps/dialog/h2$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/h2;->p:Lcom/join/mgps/dialog/h2$b;

    .line 2
    .line 3
    return-void
.end method

.method public v(Ljava/lang/CharSequence;)Lcom/join/mgps/dialog/h2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/h2;->l:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public w(Ljava/lang/CharSequence;)Lcom/join/mgps/dialog/h2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/h2;->k:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

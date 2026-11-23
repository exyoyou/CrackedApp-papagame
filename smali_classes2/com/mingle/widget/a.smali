.class public Lcom/mingle/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/Dialog;

.field private c:Lcom/mingle/widget/LoadingView;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mingle/widget/a;->a:Landroid/content/Context;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/mingle/widget/a;->c()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/Dialog;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mingle/widget/a;->a:Landroid/content/Context;

    .line 4
    .line 5
    sget v2, Lcom/mingle/shapeloading/R$style;->custom_dialog:I

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/mingle/widget/a;->b:Landroid/app/Dialog;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mingle/widget/a;->a:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget v1, Lcom/mingle/shapeloading/R$layout;->layout_dialog:I

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/mingle/widget/a;->d:Landroid/view/View;

    .line 26
    .line 27
    sget v1, Lcom/mingle/shapeloading/R$id;->loadView:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/mingle/widget/LoadingView;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/mingle/widget/a;->c:Lcom/mingle/widget/LoadingView;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/mingle/widget/a;->b:Landroid/app/Dialog;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/mingle/widget/a;->d:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mingle/widget/a;->b:Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()Landroid/app/Dialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mingle/widget/a;->b:Landroid/app/Dialog;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mingle/widget/a;->d:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mingle/widget/a;->b:Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mingle/widget/a;->c:Lcom/mingle/widget/LoadingView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/mingle/widget/LoadingView;->setLoadingText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mingle/widget/a;->b:Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

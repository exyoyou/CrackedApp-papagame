.class public Lcom/byazt/dyf/ve;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2ea,
        0x36
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/ff/TTDislikeCommentLayout;

.field public n:Landroid/widget/EditText;

.field public final tt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/sif/c;",
            ">;"
        }
    .end annotation
.end field

.field public uj:Lcom/byazt/sif/tt;

.field public ve:Lcom/byazt/vo/tt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/vo/tt;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/byazt/dyf/ve;->tt:Ljava/util/List;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lcom/byazt/dyf/ve;->ve:Lcom/byazt/vo/tt;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic c(Lcom/byazt/dyf/ve;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/dyf/ve;->n:Landroid/widget/EditText;

    return-object p0
.end method

.method private c(Landroid/view/View;)V
    .locals 3

    const v0, 0x7a06ffed

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/byazt/dyf/ve;->n:Landroid/widget/EditText;

    .line 3
    invoke-static {v0}, Lcom/byazt/dyf/ve;->c(Landroid/widget/EditText;)V

    const v0, 0x7a06ffee

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5
    new-instance v1, Lcom/byazt/dyf/ve$1;

    invoke-direct {v1, p0}, Lcom/byazt/dyf/ve$1;-><init>(Lcom/byazt/dyf/ve;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7a06fff0

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 7
    new-instance v1, Lcom/byazt/dyf/ve$2;

    invoke-direct {v1, p0}, Lcom/byazt/dyf/ve$2;-><init>(Lcom/byazt/dyf/ve;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7a06ffec

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 9
    iget-object v1, p0, Lcom/byazt/dyf/ve;->n:Landroid/widget/EditText;

    new-instance v2, Lcom/byazt/dyf/ve$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/byazt/dyf/ve$3;-><init>(Lcom/byazt/dyf/ve;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public static c(Landroid/widget/EditText;)V
    .locals 3

    .line 10
    new-instance v0, Lcom/byazt/dyf/ve$4;

    invoke-direct {v0}, Lcom/byazt/dyf/ve$4;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 11
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x1f4

    invoke-direct {v0, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, -0x1

    .line 25
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 26
    .line 27
    const/4 v2, -0x2

    .line 28
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/dyf/ve;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/dyf/ve;->tt:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/dyf/ve;)Lcom/byazt/sif/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/dyf/ve;->uj:Lcom/byazt/sif/tt;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/dyf/ve;)Lcom/byazt/vo/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/dyf/ve;->ve:Lcom/byazt/vo/tt;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/byazt/dyf/ve;->c:Lcom/byazt/ff/TTDislikeCommentLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7a06ffed

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/sif/c;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/byazt/dyf/ve;->tt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lcom/byazt/sif/tt;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/byazt/dyf/ve;->uj:Lcom/byazt/sif/tt;

    return-void
.end method

.method public c(Lcom/byazt/vo/tt;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 13
    :cond_0
    iput-object p1, p0, Lcom/byazt/dyf/ve;->ve:Lcom/byazt/vo/tt;

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/dyf/ve;->ve()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/dyf/ve;->uj:Lcom/byazt/sif/tt;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/byazt/sif/tt;->c()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/byazt/vfu/uj;->c(Landroid/content/Context;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    const p1, 0x7a06fff2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/byazt/ff/TTDislikeCommentLayout;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/byazt/dyf/ve;->c:Lcom/byazt/ff/TTDislikeCommentLayout;

    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/byazt/dyf/ve;->c(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/byazt/dyf/ve;->n()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/byazt/dyf/ve;->tt()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/16 v2, 0x50

    .line 16
    .line 17
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public tt()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/dyf/ve;->c:Lcom/byazt/ff/TTDislikeCommentLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7a06ffed

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_2

    .line 5
    iget-object v2, p0, Lcom/byazt/dyf/ve;->c:Lcom/byazt/ff/TTDislikeCommentLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 6
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    return-void
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/dyf/ve;->n:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public ve()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/dyf/ve;->c:Lcom/byazt/ff/TTDislikeCommentLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7a06ffed

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/byazt/dyf/ve;->c:Lcom/byazt/ff/TTDislikeCommentLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    return-void
.end method

.class public Lcom/papa91/arc/view/ToastUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private toast:Landroid/widget/Toast;

.field private toastView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    .line 4
    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {p1, p3}, Landroid/widget/Toast;->setDuration(I)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const-string v1, "layout_inflater"

    .line 3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    .line 4
    sget v1, Lorg/ppsspp/ppsspp/R$layout;->toast_style:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 5
    sget v1, Lorg/ppsspp/ppsspp/R$id;->message:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const/4 p0, 0x1

    .line 8
    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setDuration(I)V

    .line 9
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showShort(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Landroid/widget/Toast;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    const-string v1, "layout_inflater"

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/view/LayoutInflater;

    .line 16
    .line 17
    sget v1, Lorg/ppsspp/ppsspp/R$layout;->toast_style:I

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    sget v1, Lorg/ppsspp/ppsspp/R$id;->message:I

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setDuration(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public Indefinite(Landroid/content/Context;II)Lcom/papa91/arc/view/ToastUtil;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/papa91/arc/view/ToastUtil;->toastView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setText(I)V

    .line 8
    iget-object p1, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {p1, p3}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/papa91/arc/view/ToastUtil;->toastView:Landroid/widget/LinearLayout;

    :goto_1
    return-object p0
.end method

.method public Indefinite(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/papa91/arc/view/ToastUtil;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/papa91/arc/view/ToastUtil;->toastView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {p1, p3}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/papa91/arc/view/ToastUtil;->toastView:Landroid/widget/LinearLayout;

    :goto_1
    return-object p0
.end method

.method public Long(Landroid/content/Context;I)Lcom/papa91/arc/view/ToastUtil;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/papa91/arc/view/ToastUtil;->toastView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setText(I)V

    .line 8
    iget-object p1, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {p1, v1}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/papa91/arc/view/ToastUtil;->toastView:Landroid/widget/LinearLayout;

    :goto_1
    return-object p0
.end method

.method public Long(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/papa91/arc/view/ToastUtil;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/papa91/arc/view/ToastUtil;->toastView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {p1, v1}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/papa91/arc/view/ToastUtil;->toastView:Landroid/widget/LinearLayout;

    :goto_1
    return-object p0
.end method

.method public Short(Landroid/content/Context;I)Lcom/papa91/arc/view/ToastUtil;
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/papa91/arc/view/ToastUtil;->toastView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setText(I)V

    .line 8
    iget-object p1, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {p1, v1}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/papa91/arc/view/ToastUtil;->toastView:Landroid/widget/LinearLayout;

    :goto_1
    return-object p0
.end method

.method public Short(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/papa91/arc/view/ToastUtil;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/papa91/arc/view/ToastUtil;->toastView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {p1, v1}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/papa91/arc/view/ToastUtil;->toastView:Landroid/widget/LinearLayout;

    :goto_1
    return-object p0
.end method

.method public addView(Landroid/view/View;I)Lcom/papa91/arc/view/ToastUtil;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/LinearLayout;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/papa91/arc/view/ToastUtil;->toastView:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public getToast()Landroid/widget/Toast;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    .line 2
    .line 3
    return-object v0
.end method

.method public setToastBackground(II)Lcom/papa91/arc/view/ToastUtil;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const v1, 0x102000b

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-object p0
.end method

.method public setToastColor(II)Lcom/papa91/arc/view/ToastUtil;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const v1, 0x102000b

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-object p0
.end method

.method public show()Lcom/papa91/arc/view/ToastUtil;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-object p0
.end method

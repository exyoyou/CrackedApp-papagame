.class public Lcom/baidu/passbqt/view/CommonDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/passbqt/NoProguard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/passbqt/view/CommonDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Landroid/view/View$OnClickListener;

.field private i:Ljava/lang/String;

.field private j:Landroid/view/View$OnClickListener;

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->e:Z

    .line 6
    .line 7
    const/16 v0, 0x64

    .line 8
    .line 9
    iput v0, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->f:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->a:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method

.method static synthetic a(Lcom/baidu/passbqt/view/CommonDialog$Builder;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->j:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic b(Lcom/baidu/passbqt/view/CommonDialog$Builder;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->h:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/baidu/passbqt/view/CommonDialog$Builder;
    .locals 0

    .line 7
    iput p1, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->k:I

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/baidu/passbqt/view/CommonDialog$Builder;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/passbqt/view/CommonDialog$Builder;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/baidu/passbqt/view/CommonDialog$Builder;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->g:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->h:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public a(Z)Lcom/baidu/passbqt/view/CommonDialog$Builder;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->e:Z

    return-object p0
.end method

.method public a()Lcom/baidu/passbqt/view/CommonDialog;
    .locals 11

    .line 8
    iget-object v0, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 9
    sget v1, Lcom/baidu/passbqt/R$layout;->pass_sdk_base_ui_common_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/baidu/passbqt/view/CommonDialog;

    iget-object v2, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->a:Landroid/content/Context;

    sget v3, Lcom/baidu/passbqt/R$style;->pass_base_ui_common_dialog_style:I

    invoke-direct {v1, v2, v3}, Lcom/baidu/passbqt/view/CommonDialog;-><init>(Landroid/content/Context;I)V

    .line 11
    sget v2, Lcom/baidu/passbqt/R$id;->pass_base_ui_dialog_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 12
    sget v3, Lcom/baidu/passbqt/R$id;->pass_base_ui_dialog_content:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 13
    sget v4, Lcom/baidu/passbqt/R$id;->pass_base_ui_dialog_horizontal_split_line:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 14
    sget v5, Lcom/baidu/passbqt/R$id;->negative_btn:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 15
    sget v6, Lcom/baidu/passbqt/R$id;->positive_btn:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 16
    sget v7, Lcom/baidu/passbqt/R$id;->pass_base_ui_dialog_vertical_split_line:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 17
    iget-object v8, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->c:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v8, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->b:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, ""

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->b:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v8, 0x0

    .line 20
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 21
    iget v8, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->k:I

    if-lez v8, :cond_1

    .line 22
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 23
    :cond_1
    iget-object v8, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->i:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    new-instance v8, Lcom/baidu/passbqt/view/CommonDialog$Builder$1;

    invoke-direct {v8, p0, v1}, Lcom/baidu/passbqt/view/CommonDialog$Builder$1;-><init>(Lcom/baidu/passbqt/view/CommonDialog$Builder;Lcom/baidu/passbqt/view/CommonDialog;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v8, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->g:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    new-instance v8, Lcom/baidu/passbqt/view/CommonDialog$Builder$2;

    invoke-direct {v8, p0, v1}, Lcom/baidu/passbqt/view/CommonDialog$Builder$2;-><init>(Lcom/baidu/passbqt/view/CommonDialog$Builder;Lcom/baidu/passbqt/view/CommonDialog;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 28
    iget-boolean v8, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->e:Z

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 29
    iget-boolean v8, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->e:Z

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 30
    iget v8, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->f:I

    const/16 v9, 0x64

    if-eq v8, v9, :cond_2

    .line 31
    invoke-static {v2, v8}, Lcom/baidu/passbqt/view/CommonDialog;->a(Landroid/widget/TextView;I)V

    .line 32
    iget v8, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->f:I

    invoke-static {v3, v8}, Lcom/baidu/passbqt/view/CommonDialog;->a(Landroid/widget/TextView;I)V

    .line 33
    iget v8, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->f:I

    invoke-static {v5, v8}, Lcom/baidu/passbqt/view/CommonDialog;->a(Landroid/widget/TextView;I)V

    .line 34
    iget v8, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->f:I

    invoke-static {v6, v8}, Lcom/baidu/passbqt/view/CommonDialog;->a(Landroid/widget/TextView;I)V

    .line 35
    :cond_2
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x11

    .line 36
    invoke-virtual {v8, v9}, Landroid/view/Window;->setGravity(I)V

    .line 37
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    const/16 v10, 0x1e

    .line 38
    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 39
    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v10, -0x1

    .line 40
    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v10, -0x2

    .line 41
    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 42
    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 43
    iget-boolean v8, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->d:Z

    if-eqz v8, :cond_3

    .line 44
    sget v8, Lcom/baidu/passbqt/R$id;->pass_base_ui_dialog_root_view:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v8, Lcom/baidu/passbqt/R$drawable;->pass_base_ui_common_dialog_dark_bg:I

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 45
    iget-object v0, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v8, Lcom/baidu/passbqt/R$color;->pass_base_ui_dialog_title_dark_text_color:I

    .line 46
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 47
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    iget-object v0, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/baidu/passbqt/R$color;->pass_base_ui_dialog_content_text_dark_color:I

    .line 49
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 50
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object v0, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/baidu/passbqt/R$color;->pass_base_ui_dialog_split_line_dark_color:I

    .line 52
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 53
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 54
    iget-object v0, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/baidu/passbqt/R$color;->pass_base_ui_dialog_negative_btn_text_dark_color:I

    .line 55
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 56
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    iget-object v0, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/baidu/passbqt/R$color;->pass_base_ui_dialog_positive_btn_text_dark_color:I

    .line 58
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 59
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget-object v0, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/baidu/passbqt/R$color;->pass_base_ui_dialog_split_line_dark_color:I

    .line 61
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 62
    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->a:Landroid/content/Context;

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_4

    .line 64
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 66
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 67
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 68
    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 69
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_4
    return-object v1
.end method

.method public b(I)Lcom/baidu/passbqt/view/CommonDialog$Builder;
    .locals 0

    .line 5
    iput p1, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->f:I

    return-object p0
.end method

.method public b(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/baidu/passbqt/view/CommonDialog$Builder;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->i:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->j:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public b(Z)Lcom/baidu/passbqt/view/CommonDialog$Builder;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/baidu/passbqt/view/CommonDialog$Builder;->d:Z

    return-object p0
.end method

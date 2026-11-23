.class public Lcom/papa91/view/RealNameLoginDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/view/RealNameLoginDialog$OnBtnClickListener;,
        Lcom/papa91/view/RealNameLoginDialog$UrlClickSpan;
    }
.end annotation


# static fields
.field public static final BTN_CENTER:I = 0x4

.field public static final BTN_CLOSE:I = 0x1

.field public static final BTN_LEFT:I = 0x2

.field public static final BTN_RIGHT:I = 0x3

.field private static context:Landroid/content/Context;

.field private static dialog:Lcom/papa91/view/RealNameLoginDialog;


# instance fields
.field private close:Landroid/view/View;

.field private dialog_button_center:Landroid/widget/Button;

.field private dialog_button_left:Landroid/widget/Button;

.field private dialog_button_right:Landroid/widget/Button;

.field private dialog_content:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

.field private flag:Z

.field private mListener:Lcom/papa91/view/RealNameLoginDialog$OnBtnClickListener;

.field realNameCheckInfo:Lcom/papa91/arc/bean/PopwindowBean;

.field private tip_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget v0, Lcom/papa91/mix/R$style;->MyDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/papa91/view/RealNameLoginDialog;->flag:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/papa91/view/RealNameLoginDialog;->flag:Z

    .line 5
    sput-object p1, Lcom/papa91/view/RealNameLoginDialog;->context:Landroid/content/Context;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/papa91/view/RealNameLoginDialog;->flag:Z

    return-void
.end method

.method public static synthetic a(Lcom/papa91/view/RealNameLoginDialog;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/view/RealNameLoginDialog;->lambda$initData$0(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$000(Lcom/papa91/view/RealNameLoginDialog;)Lcom/papa91/view/RealNameLoginDialog$OnBtnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/view/RealNameLoginDialog;->mListener:Lcom/papa91/view/RealNameLoginDialog$OnBtnClickListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/papa91/view/RealNameLoginDialog;
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/view/RealNameLoginDialog;->dialog:Lcom/papa91/view/RealNameLoginDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/papa91/view/RealNameLoginDialog;->context:Landroid/content/Context;

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    :cond_0
    new-instance v0, Lcom/papa91/view/RealNameLoginDialog;

    .line 10
    .line 11
    sget v1, Lcom/papa91/mix/R$style;->MyDialog:I

    .line 12
    .line 13
    invoke-direct {v0, p0, v1}, Lcom/papa91/view/RealNameLoginDialog;-><init>(Landroid/content/Context;I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/papa91/view/RealNameLoginDialog;->dialog:Lcom/papa91/view/RealNameLoginDialog;

    .line 17
    .line 18
    :cond_1
    sget-object p0, Lcom/papa91/view/RealNameLoginDialog;->dialog:Lcom/papa91/view/RealNameLoginDialog;

    .line 19
    .line 20
    return-object p0
.end method

.method private initData()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->realNameCheckInfo:Lcom/papa91/arc/bean/PopwindowBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/papa91/view/RealNameLoginDialog;->tip_title:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getTitle()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_content:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const v2, 0x106000d

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_content:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 35
    .line 36
    new-instance v1, Lcom/papa91/view/RealNameLoginDialog$UrlClickSpan;

    .line 37
    .line 38
    invoke-direct {v1}, Lcom/papa91/view/RealNameLoginDialog$UrlClickSpan;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setClickableTableSpan(Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_content:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 45
    .line 46
    new-instance v1, Lcom/papa91/view/d;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/papa91/view/d;-><init>(Lcom/papa91/view/RealNameLoginDialog;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setOnClickATagListener(Lcom/papa91/arc/widget/htmltext/OnClickATagListener;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_content:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/papa91/view/RealNameLoginDialog;->realNameCheckInfo:Lcom/papa91/arc/bean/PopwindowBean;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/papa91/arc/bean/PopwindowBean;->getSubTitle()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setHtml(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_button_left:Landroid/widget/Button;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/papa91/view/RealNameLoginDialog;->realNameCheckInfo:Lcom/papa91/arc/bean/PopwindowBean;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonLeft()Lcom/papa91/arc/bean/ButtonBean;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const/4 v2, 0x2

    .line 74
    invoke-direct {p0, v0, v2, v1}, Lcom/papa91/view/RealNameLoginDialog;->setButton(Landroid/view/View;ILcom/papa91/arc/bean/ButtonBean;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_button_right:Landroid/widget/Button;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/papa91/view/RealNameLoginDialog;->realNameCheckInfo:Lcom/papa91/arc/bean/PopwindowBean;

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonRight()Lcom/papa91/arc/bean/ButtonBean;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const/4 v2, 0x3

    .line 86
    invoke-direct {p0, v0, v2, v1}, Lcom/papa91/view/RealNameLoginDialog;->setButton(Landroid/view/View;ILcom/papa91/arc/bean/ButtonBean;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_button_center:Landroid/widget/Button;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/papa91/view/RealNameLoginDialog;->realNameCheckInfo:Lcom/papa91/arc/bean/PopwindowBean;

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const/4 v2, 0x4

    .line 98
    invoke-direct {p0, v0, v2, v1}, Lcom/papa91/view/RealNameLoginDialog;->setButton(Landroid/view/View;ILcom/papa91/arc/bean/ButtonBean;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/papa91/view/RealNameLoginDialog;->close:Landroid/view/View;

    .line 102
    .line 103
    iget-object v1, p0, Lcom/papa91/view/RealNameLoginDialog;->realNameCheckInfo:Lcom/papa91/arc/bean/PopwindowBean;

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonClose()Lcom/papa91/arc/bean/ButtonBean;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const/4 v2, 0x1

    .line 110
    invoke-direct {p0, v0, v2, v1}, Lcom/papa91/view/RealNameLoginDialog;->setButton(Landroid/view/View;ILcom/papa91/arc/bean/ButtonBean;)V

    .line 111
    .line 112
    .line 113
    :cond_0
    return-void
.end method

.method private synthetic lambda$initData$0(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "4"

    .line 6
    .line 7
    const-string v2, "0"

    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    const-string v5, ""

    .line 12
    .line 13
    move-object v3, p3

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1
.end method

.method private setButton(Landroid/view/View;ILcom/papa91/arc/bean/ButtonBean;)V
    .locals 2

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    instance-of v0, p1, Landroid/widget/Button;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    check-cast v0, Landroid/widget/Button;

    .line 13
    .line 14
    invoke-virtual {p3}, Lcom/papa91/arc/bean/ButtonBean;->getButtonHint()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcom/papa91/view/RealNameLoginDialog$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p2, p3}, Lcom/papa91/view/RealNameLoginDialog$1;-><init>(Lcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p2, 0x4

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/papa91/view/RealNameLoginDialog;->flag:Z

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/papa91/mix/R$layout;->realname_notice_dialog:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 12
    .line 13
    .line 14
    sget p1, Lcom/papa91/mix/R$id;->tip_title:I

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/widget/TextView;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/papa91/view/RealNameLoginDialog;->tip_title:Landroid/widget/TextView;

    .line 23
    .line 24
    sget p1, Lcom/papa91/mix/R$id;->dialog_content:I

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_content:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 33
    .line 34
    sget p1, Lcom/papa91/mix/R$id;->dialog_button_left:I

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroid/widget/Button;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_button_left:Landroid/widget/Button;

    .line 43
    .line 44
    sget p1, Lcom/papa91/mix/R$id;->dialog_button_right:I

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/widget/Button;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_button_right:Landroid/widget/Button;

    .line 53
    .line 54
    sget p1, Lcom/papa91/mix/R$id;->dialog_button_center:I

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroid/widget/Button;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/papa91/view/RealNameLoginDialog;->dialog_button_center:Landroid/widget/Button;

    .line 63
    .line 64
    sget p1, Lcom/papa91/mix/R$id;->close:I

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/papa91/view/RealNameLoginDialog;->close:Landroid/view/View;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const/4 v1, -0x1

    .line 89
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 92
    .line 93
    .line 94
    invoke-direct {p0}, Lcom/papa91/view/RealNameLoginDialog;->initData()V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/papa91/view/RealNameLoginDialog;->flag:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public setDialogData(Lcom/papa91/arc/bean/PopwindowBean;)Lcom/papa91/view/RealNameLoginDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RealNameLoginDialog;->realNameCheckInfo:Lcom/papa91/arc/bean/PopwindowBean;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/papa91/view/RealNameLoginDialog;->tip_title:Landroid/widget/TextView;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/papa91/view/RealNameLoginDialog;->initData()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-object p0
.end method

.method public setDialogListener(Lcom/papa91/view/RealNameLoginDialog$OnBtnClickListener;)Lcom/papa91/view/RealNameLoginDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RealNameLoginDialog;->mListener:Lcom/papa91/view/RealNameLoginDialog$OnBtnClickListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public setIsCancelable(Z)Lcom/papa91/view/RealNameLoginDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public show()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/view/RealNameLoginDialog;->context:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Landroid/app/Activity;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

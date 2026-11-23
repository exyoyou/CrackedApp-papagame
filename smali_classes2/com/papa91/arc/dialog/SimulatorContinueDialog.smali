.class public Lcom/papa91/arc/dialog/SimulatorContinueDialog;
.super Lcom/papa91/arc/view/BaseDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SimulatorContinueDialog$OnOptionsListener;
    }
.end annotation


# instance fields
.field private btn_ok:Landroid/widget/Button;

.field private iv_close:Landroid/widget/ImageView;

.field private listener:Lcom/papa91/arc/dialog/SimulatorContinueDialog$OnOptionsListener;

.field private tv_content:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$style;->PspDialog:I

    invoke-direct {p0, p1, v0}, Lcom/papa91/arc/dialog/SimulatorContinueDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 3
    sget p1, Lorg/ppsspp/ppsspp/R$layout;->dialog_simulator_continue:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/BaseDialog;->setBackgroundDimEnabled(Z)V

    .line 5
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SimulatorContinueDialog;->initView()V

    .line 6
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SimulatorContinueDialog;->setListener()V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_title:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorContinueDialog;->tv_title:Landroid/widget/TextView;

    .line 10
    .line 11
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_content:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorContinueDialog;->tv_content:Landroid/widget/TextView;

    .line 20
    .line 21
    sget v0, Lorg/ppsspp/ppsspp/R$id;->iv_close:I

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/ImageView;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorContinueDialog;->iv_close:Landroid/widget/ImageView;

    .line 30
    .line 31
    sget v0, Lorg/ppsspp/ppsspp/R$id;->btn_ok:I

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/Button;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorContinueDialog;->btn_ok:Landroid/widget/Button;

    .line 40
    .line 41
    return-void
.end method

.method private setListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorContinueDialog;->btn_ok:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorContinueDialog;->iv_close:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lorg/ppsspp/ppsspp/R$id;->btn_ok:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/papa91/arc/dialog/SimulatorContinueDialog;->listener:Lcom/papa91/arc/dialog/SimulatorContinueDialog$OnOptionsListener;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/papa91/arc/dialog/SimulatorContinueDialog$OnOptionsListener;->onConfirm()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    sget v0, Lorg/ppsspp/ppsspp/R$id;->iv_close:I

    .line 25
    .line 26
    if-ne p1, v0, :cond_3

    .line 27
    .line 28
    iget-object p1, p0, Lcom/papa91/arc/dialog/SimulatorContinueDialog;->listener:Lcom/papa91/arc/dialog/SimulatorContinueDialog$OnOptionsListener;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-interface {p1}, Lcom/papa91/arc/dialog/SimulatorContinueDialog$OnOptionsListener;->onClose()V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    .line 36
    .line 37
    .line 38
    :cond_3
    :goto_0
    return-void
.end method

.method public setConfirmText(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/SimulatorContinueDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorContinueDialog;->btn_ok:Landroid/widget/Button;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setListener(Lcom/papa91/arc/dialog/SimulatorContinueDialog$OnOptionsListener;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/papa91/arc/dialog/SimulatorContinueDialog;->listener:Lcom/papa91/arc/dialog/SimulatorContinueDialog$OnOptionsListener;

    return-void
.end method

.method public setTipContent(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/SimulatorContinueDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorContinueDialog;->tv_content:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setTipTitle(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/SimulatorContinueDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorContinueDialog;->tv_title:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

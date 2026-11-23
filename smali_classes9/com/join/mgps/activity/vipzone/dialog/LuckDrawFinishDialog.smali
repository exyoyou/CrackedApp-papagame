.class public Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field closed:Landroid/widget/ImageView;

.field context:Landroid/content/Context;

.field luck:Lcom/facebook/drawee/view/SimpleDraweeView;

.field ok:Landroid/widget/TextView;

.field prizeBean:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

.field sub_title:Landroid/widget/TextView;


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

    const v0, 0x7f13016a

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->context:Landroid/content/Context;

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

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->context:Landroid/content/Context;

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
    const v1, 0x7f0a03b8

    .line 6
    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    const v1, 0x7f0a1188

    .line 11
    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->onClickOk(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->onClickClosed(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public onClickClosed(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onClickOk(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->prizeBean:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->getPrize_type()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x2

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    new-instance p1, Landroid/content/Intent;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->context:Landroid/content/Context;

    .line 16
    .line 17
    const-class v1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;

    .line 18
    .line 19
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "datas"

    .line 23
    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->prizeBean:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->context:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->context:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const v0, 0x7f0d0659

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    const v0, 0x7f0a1188

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/widget/TextView;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->ok:Landroid/widget/TextView;

    .line 31
    .line 32
    const v0, 0x7f0a1643

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/TextView;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->sub_title:Landroid/widget/TextView;

    .line 42
    .line 43
    const v0, 0x7f0a0fc4

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->luck:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 53
    .line 54
    const v0, 0x7f0a03b8

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroid/widget/ImageView;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->closed:Landroid/widget/ImageView;

    .line 64
    .line 65
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->ok:Landroid/widget/TextView;

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->closed:Landroid/widget/ImageView;

    .line 71
    .line 72
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->sub_title:Landroid/widget/TextView;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->prizeBean:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->getTitle()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->luck:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->prizeBean:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->getPic()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public showMydialog(Lcom/join/mgps/activity/vipzone/bean/PrizeBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prizeBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->prizeBean:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->show()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

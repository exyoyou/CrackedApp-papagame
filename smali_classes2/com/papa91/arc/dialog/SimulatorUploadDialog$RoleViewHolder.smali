.class Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;
.super Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SimulatorUploadDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RoleViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder<",
        "Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SimulatorUploadDialog;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/papa91/arc/dialog/SimulatorUploadDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;->this$0:Lcom/papa91/arc/dialog/SimulatorUploadDialog;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;-><init>(Lcom/papa91/arc/dialog/SimulatorUploadDialog;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    sget p1, Lorg/ppsspp/ppsspp/R$id;->tv_title:I

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;->tv_title:Landroid/widget/TextView;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public init(Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;->dataBean:Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;->tv_title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;->getRole()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic init(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;

    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;->init(Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;)V

    return-void
.end method

.method public onSelected()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;->onSelected()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;->dataBean:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;->setChecked(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;->tv_title:Landroid/widget/TextView;

    .line 13
    .line 14
    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->shape_simulator_role_h:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;->tv_title:Landroid/widget/TextView;

    .line 20
    .line 21
    const-string v1, "#FFFFFFFF"

    .line 22
    .line 23
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onUnselected()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;->onUnselected()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;->dataBean:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;->setChecked(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;->tv_title:Landroid/widget/TextView;

    .line 13
    .line 14
    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->shape_simulator_role_n:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;->tv_title:Landroid/widget/TextView;

    .line 20
    .line 21
    const-string v1, "#FFC4C4C4"

    .line 22
    .line 23
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

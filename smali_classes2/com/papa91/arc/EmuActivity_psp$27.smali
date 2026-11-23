.class Lcom/papa91/arc/EmuActivity_psp$27;
.super Lcom/papa91/arc/interfaces/DialogListenerWrap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/EmuActivity_psp;->handleButtonAction(Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_psp;

.field final synthetic val$_parent:Landroid/app/Dialog;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/EmuActivity_psp;Landroid/app/Dialog;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$27;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa91/arc/EmuActivity_psp$27;->val$_parent:Landroid/app/Dialog;

    .line 4
    .line 5
    iput p3, p0, Lcom/papa91/arc/EmuActivity_psp$27;->val$type:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/papa91/arc/interfaces/DialogListenerWrap;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onCenterClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa91/arc/interfaces/DialogListenerWrap;->onCenterClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v1, v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$27;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp$27;->val$_parent:Landroid/app/Dialog;

    .line 21
    .line 22
    iget v2, p0, Lcom/papa91/arc/EmuActivity_psp$27;->val$type:I

    .line 23
    .line 24
    invoke-static {v0, v1, p1, p2, v2}, Lcom/papa91/arc/EmuActivity_psp;->access$2000(Lcom/papa91/arc/EmuActivity_psp;Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onLeftClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa91/arc/interfaces/DialogListenerWrap;->onLeftClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v1, v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$27;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp$27;->val$_parent:Landroid/app/Dialog;

    .line 21
    .line 22
    iget v2, p0, Lcom/papa91/arc/EmuActivity_psp$27;->val$type:I

    .line 23
    .line 24
    invoke-static {v0, v1, p1, p2, v2}, Lcom/papa91/arc/EmuActivity_psp;->access$2000(Lcom/papa91/arc/EmuActivity_psp;Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onRightClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa91/arc/interfaces/DialogListenerWrap;->onRightClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v1, v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$27;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp$27;->val$_parent:Landroid/app/Dialog;

    .line 21
    .line 22
    iget v2, p0, Lcom/papa91/arc/EmuActivity_psp$27;->val$type:I

    .line 23
    .line 24
    invoke-static {v0, v1, p1, p2, v2}, Lcom/papa91/arc/EmuActivity_psp;->access$2000(Lcom/papa91/arc/EmuActivity_psp;Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

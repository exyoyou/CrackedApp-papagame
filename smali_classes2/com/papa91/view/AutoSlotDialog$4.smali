.class Lcom/papa91/view/AutoSlotDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/AutoSlotDialog;->showConfirmDialog(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/AutoSlotDialog;

.field final synthetic val$dialog:Lcom/papa91/view/AutoSlotDialog$ConfirmDialog;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/papa91/view/AutoSlotDialog;ILcom/papa91/view/AutoSlotDialog$ConfirmDialog;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog$4;->this$0:Lcom/papa91/view/AutoSlotDialog;

    .line 2
    .line 3
    iput p2, p0, Lcom/papa91/view/AutoSlotDialog$4;->val$pos:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa91/view/AutoSlotDialog$4;->val$dialog:Lcom/papa91/view/AutoSlotDialog$ConfirmDialog;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/papa91/view/AutoSlotDialog$4;->val$path:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->freeLoadSlot()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget p1, p0, Lcom/papa91/view/AutoSlotDialog$4;->val$pos:I

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->freeLoadSlotSet()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/papa91/view/AutoSlotDialog$4;->this$0:Lcom/papa91/view/AutoSlotDialog;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/papa91/view/AutoSlotDialog;->flag:Landroid/view/View;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const/16 v0, 0x8

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/papa91/view/AutoSlotDialog$4;->val$dialog:Lcom/papa91/view/AutoSlotDialog$ConfirmDialog;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/papa91/view/BaseDialog;->dismiss()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/papa91/view/AutoSlotDialog$4;->this$0:Lcom/papa91/view/AutoSlotDialog;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/papa91/view/AutoSlotDialog;->dismiss()V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/papa91/view/AutoSlotDialog$4;->val$path:Ljava/lang/String;

    .line 36
    .line 37
    iget v0, p0, Lcom/papa91/view/AutoSlotDialog$4;->val$pos:I

    .line 38
    .line 39
    invoke-static {p1, v0}, Lcom/papa91/activity/EmuBaseActivity;->loadAutoSlot(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

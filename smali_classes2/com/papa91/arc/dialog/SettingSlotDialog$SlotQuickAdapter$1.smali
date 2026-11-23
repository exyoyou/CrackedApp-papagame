.class Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;->convert(ILandroid/view/View;Landroid/view/ViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;

    .line 2
    .line 3
    iput p2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$1;->val$position:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;

    .line 20
    .line 21
    iget v2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$1;->val$position:I

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/papa91/arc/bean/Slot;

    .line 28
    .line 29
    invoke-virtual {v0, p1, v1}, Lcom/papa91/arc/dialog/SettingSlotDialog;->showSlotPrompt(ILcom/papa91/arc/bean/Slot;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingSlotDialog;->showQuickSlotVip()V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

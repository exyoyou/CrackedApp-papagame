.class Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;->convert(ILandroid/view/View;Landroid/view/ViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;

    .line 2
    .line 3
    iput p2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$1;->val$position:I

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;

    .line 2
    .line 3
    iget v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$1;->val$position:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/papa91/arc/bean/Slot;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotAdapter;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {v1, p1, v0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->showSlotPrompt(ILcom/papa91/arc/bean/Slot;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

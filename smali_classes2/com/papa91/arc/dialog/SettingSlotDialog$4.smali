.class Lcom/papa91/arc/dialog/SettingSlotDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/interfaces/IOnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingSlotDialog;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$4;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$4;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 2
    .line 3
    iget v1, v0, Lcom/papa91/arc/dialog/SettingSlotDialog;->oldSelIndex:I

    .line 4
    .line 5
    if-eq p1, v1, :cond_2

    .line 6
    .line 7
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotTypeAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/papa91/arc/bean/TypeBean;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/papa91/arc/bean/TypeBean;->getType()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x2

    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$4;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->goSlotShop()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Lcom/papa91/arc/bean/TypeBean;->getType()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x1

    .line 34
    if-ne v1, v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lcom/papa91/arc/bean/TypeBean;->setShowDot(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$4;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 40
    .line 41
    invoke-static {v1, v3}, Lcom/papa91/arc/dialog/SettingSlotDialog;->access$102(Lcom/papa91/arc/dialog/SettingSlotDialog;Z)Z

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$4;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 45
    .line 46
    iget-object v4, v1, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotTypeAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;

    .line 47
    .line 48
    iget v1, v1, Lcom/papa91/arc/dialog/SettingSlotDialog;->oldSelIndex:I

    .line 49
    .line 50
    invoke-virtual {v4, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/papa91/arc/bean/TypeBean;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/TypeBean;->setSelected(Z)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v3}, Lcom/papa91/arc/bean/TypeBean;->setSelected(Z)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$4;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 63
    .line 64
    iput p1, v0, Lcom/papa91/arc/dialog/SettingSlotDialog;->oldSelIndex:I

    .line 65
    .line 66
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotTypeAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;->notifyDataSetChanged()V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$4;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Lcom/papa91/arc/dialog/SettingSlotDialog;->setTab(I)V

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_0
    return-void
.end method

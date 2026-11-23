.class Lcom/papa91/arc/dialog/SettingSlotDialog$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/dialog/TipTwoDialog$OnOptionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingSlotDialog;->showSlotPrompt(ILcom/papa91/arc/bean/Slot;)V
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
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$7;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onClose()V
    .locals 0

    return-void
.end method

.method public onConfirm()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$7;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 2
    .line 3
    iget v1, v0, Lcom/papa91/arc/dialog/SettingSlotDialog;->mid:I

    .line 4
    .line 5
    sget v2, Lorg/ppsspp/ppsspp/R$id;->del:I

    .line 6
    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slots:Ljava/util/List;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingSlotDialog;->mslot:Lcom/papa91/arc/bean/Slot;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$7;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/papa91/arc/dialog/SettingSlotDialog;->mslot:Lcom/papa91/arc/bean/Slot;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/papa91/arc/bean/Slot;->getId()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingSlotDialog;->delSlot(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget v2, Lorg/ppsspp/ppsspp/R$id;->save:I

    .line 29
    .line 30
    if-ne v1, v2, :cond_1

    .line 31
    .line 32
    iget-object v1, v0, Lcom/papa91/arc/dialog/SettingSlotDialog;->mslot:Lcom/papa91/arc/bean/Slot;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/papa91/arc/bean/Slot;->getThumb()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingSlotDialog;->evictCache(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$7;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 42
    .line 43
    iget-object v1, v0, Lcom/papa91/arc/dialog/SettingSlotDialog;->mslot:Lcom/papa91/arc/bean/Slot;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/papa91/arc/bean/Slot;->getId()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingSlotDialog;->saveSlot(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    sget v2, Lorg/ppsspp/ppsspp/R$id;->load:I

    .line 54
    .line 55
    if-ne v1, v2, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->dismiss()V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$7;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 61
    .line 62
    iget-object v1, v0, Lcom/papa91/arc/dialog/SettingSlotDialog;->mslot:Lcom/papa91/arc/bean/Slot;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/papa91/arc/bean/Slot;->getPath()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingDialog;->loadSlotState(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$7;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->resumeGame()V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$7;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->showAdVideo()V

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_0
    return-void
.end method

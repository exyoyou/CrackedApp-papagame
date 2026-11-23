.class Lcom/papa91/view/AutoSlotDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/AutoSlotDialog;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/AutoSlotDialog;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/papa91/view/AutoSlotDialog;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog$2;->this$0:Lcom/papa91/view/AutoSlotDialog;

    .line 2
    .line 3
    iput p2, p0, Lcom/papa91/view/AutoSlotDialog$2;->val$pos:I

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
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget v2, p0, Lcom/papa91/view/AutoSlotDialog$2;->val$pos:I

    .line 5
    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 12
    .line 13
    const-string v2, "onclickAutosave"

    .line 14
    .line 15
    invoke-static {v2, v1}, Lcom/papa91/activity/EmuBaseActivity;->sendEmuStat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->isLogined()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->sign()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "\u8be5\u529f\u80fd\u9700\u767b\u5f55\u540e\u4f7f\u7528"

    .line 32
    .line 33
    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/papa91/view/AutoSlotDialog$2;->this$0:Lcom/papa91/view/AutoSlotDialog;

    .line 42
    .line 43
    iget v1, v1, Lcom/papa91/view/AutoSlotDialog;->vipLevel:I

    .line 44
    .line 45
    if-ge v1, v0, :cond_2

    .line 46
    .line 47
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->freeLoadSlot()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget v0, p0, Lcom/papa91/view/AutoSlotDialog$2;->val$pos:I

    .line 54
    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v0, "\u5f00\u901a\u4f1a\u5458\u5373\u53ef\u8bfb\u53d6\u8be5\u5b58\u6863"

    .line 63
    .line 64
    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/papa91/view/AutoSlotDialog$2;->this$0:Lcom/papa91/view/AutoSlotDialog;

    .line 73
    .line 74
    iget-object v0, p1, Lcom/papa91/view/AutoSlotDialog;->slots:Ljava/util/List;

    .line 75
    .line 76
    iget v1, p0, Lcom/papa91/view/AutoSlotDialog$2;->val$pos:I

    .line 77
    .line 78
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Ljava/lang/String;

    .line 83
    .line 84
    iget v1, p0, Lcom/papa91/view/AutoSlotDialog$2;->val$pos:I

    .line 85
    .line 86
    invoke-virtual {p1, v0, v1}, Lcom/papa91/view/AutoSlotDialog;->showConfirmDialog(Ljava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

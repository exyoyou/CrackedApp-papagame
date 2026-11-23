.class Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->initializeCustomView(ILandroid/view/View;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

.field final synthetic val$cheatInfo:Lorg/ppsspp/ppsspp/EditCheatInfo;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;ILorg/ppsspp/ppsspp/EditCheatInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 2
    .line 3
    iput p2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->val$i:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->val$cheatInfo:Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->del:I

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 12
    .line 13
    iget v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->val$i:I

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/papa91/arc/dialog/SettingDialog;->deleteEditCheatInfo(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 19
    .line 20
    iget v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->val$i:I

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->remove(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget v0, Lorg/ppsspp/ppsspp/R$id;->modify:I

    .line 32
    .line 33
    if-ne p1, v0, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 38
    .line 39
    iget v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->val$i:I

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->showModifyCheatDialog(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    .line 46
    .line 47
    if-ne p1, v0, :cond_4

    .line 48
    .line 49
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    const/4 v0, 0x1

    .line 58
    if-lez p1, :cond_2

    .line 59
    .line 60
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->val$cheatInfo:Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 61
    .line 62
    iget-boolean p1, p1, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 63
    .line 64
    xor-int/2addr p1, v0

    .line 65
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 68
    .line 69
    iget v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->val$i:I

    .line 70
    .line 71
    invoke-virtual {v1, v2, p1}, Lcom/papa91/arc/dialog/SettingDialog;->enableEidtCheat(II)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->val$cheatInfo:Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 75
    .line 76
    iget-boolean v1, p1, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 77
    .line 78
    xor-int/2addr v0, v1

    .line 79
    iput-boolean v0, p1, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 80
    .line 81
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->val$cheatInfo:Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 88
    .line 89
    iget-boolean p1, p1, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 90
    .line 91
    xor-int/2addr p1, v0

    .line 92
    if-ne p1, v0, :cond_3

    .line 93
    .line 94
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 97
    .line 98
    iget v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->val$i:I

    .line 99
    .line 100
    invoke-virtual {v0, v1, p1}, Lcom/papa91/arc/dialog/SettingDialog;->enableEidtCheat(II)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 105
    .line 106
    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 107
    .line 108
    iget v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->val$i:I

    .line 109
    .line 110
    invoke-virtual {v1, v2, p1}, Lcom/papa91/arc/dialog/SettingDialog;->enableEidtCheat(II)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->val$cheatInfo:Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 114
    .line 115
    iget-boolean v1, p1, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 116
    .line 117
    xor-int/2addr v0, v1

    .line 118
    iput-boolean v0, p1, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 119
    .line 120
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 123
    .line 124
    .line 125
    :cond_4
    :goto_0
    return-void
.end method

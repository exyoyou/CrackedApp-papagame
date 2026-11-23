.class Lcom/papa91/arc/dialog/SettingCheatDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingCheatDialog;->showModifyCheatDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

.field final synthetic val$index:I

.field final synthetic val$info:Lorg/ppsspp/ppsspp/EditCheatInfo;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingCheatDialog;Lorg/ppsspp/ppsspp/EditCheatInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->val$info:Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 4
    .line 5
    iput p3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->val$index:I

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatName:Landroid/widget/EditText;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "\u4f5c\u5f0a\u7801\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCode:Landroid/widget/EditText;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v0, "\u4f5c\u5f0a\u7801\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    .line 56
    .line 57
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 62
    .line 63
    iget-object v1, v0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCode:Landroid/widget/EditText;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 74
    .line 75
    invoke-static {v2}, Lcom/papa91/arc/dialog/SettingCheatDialog;->access$000(Lcom/papa91/arc/dialog/SettingCheatDialog;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/papa91/arc/dialog/SettingDialog;->checkCheatCodeInfo(Ljava/lang/String;Z)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_2

    .line 84
    .line 85
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-string v0, "\u4f5c\u5f0a\u7801\u683c\u5f0f\u6709\u8bef\uff01"

    .line 92
    .line 93
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_2
    :try_start_0
    new-instance v0, Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 98
    .line 99
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->val$info:Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 100
    .line 101
    iget-boolean v1, v1, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 102
    .line 103
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 104
    .line 105
    invoke-static {v2}, Lcom/papa91/arc/dialog/SettingCheatDialog;->access$000(Lcom/papa91/arc/dialog/SettingCheatDialog;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    iget-object v3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 110
    .line 111
    iget-object v3, v3, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatName:Landroid/widget/EditText;

    .line 112
    .line 113
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    iget-object v4, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 122
    .line 123
    iget-object v4, v4, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCode:Landroid/widget/EditText;

    .line 124
    .line 125
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/ppsspp/ppsspp/EditCheatInfo;-><init>(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 137
    .line 138
    iget v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->val$index:I

    .line 139
    .line 140
    invoke-virtual {v1, v2, v0}, Lcom/papa91/arc/dialog/SettingDialog;->modifyEditCheatInfo(ILorg/ppsspp/ppsspp/EditCheatInfo;)V

    .line 141
    .line 142
    .line 143
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 144
    .line 145
    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 146
    .line 147
    iget v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->val$index:I

    .line 148
    .line 149
    invoke-virtual {v1, v2}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->remove(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 153
    .line 154
    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 155
    .line 156
    iget v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->val$index:I

    .line 157
    .line 158
    invoke-virtual {v1, v2, v0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->addData(ILjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 162
    .line 163
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    .line 164
    .line 165
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :catchall_0
    move-exception p1

    .line 170
    goto :goto_1

    .line 171
    :catch_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    const-string v0, "\u4f5c\u5f0a\u7801\u6dfb\u52a0\u5931\u8d25\uff01"

    .line 176
    .line 177
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    .line 179
    .line 180
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 181
    .line 182
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    .line 183
    .line 184
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :goto_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 189
    .line 190
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    .line 191
    .line 192
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 193
    .line 194
    .line 195
    throw p1
.end method

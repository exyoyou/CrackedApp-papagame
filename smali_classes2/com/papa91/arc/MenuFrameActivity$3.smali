.class Lcom/papa91/arc/MenuFrameActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/MenuFrameActivity;->showModifyCheatDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/MenuFrameActivity;

.field final synthetic val$index:I

.field final synthetic val$info:Lorg/ppsspp/ppsspp/EditCheatInfo;


# direct methods
.method constructor <init>(Lcom/papa91/arc/MenuFrameActivity;Lorg/ppsspp/ppsspp/EditCheatInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$3;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa91/arc/MenuFrameActivity$3;->val$info:Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 4
    .line 5
    iput p3, p0, Lcom/papa91/arc/MenuFrameActivity$3;->val$index:I

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
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$3;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/papa91/arc/MenuFrameActivity;->cheatName:Landroid/widget/EditText;

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
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$3;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    .line 22
    .line 23
    const-string v0, "\u4f5c\u5f0a\u7801\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$3;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/papa91/arc/MenuFrameActivity;->cheatCode:Landroid/widget/EditText;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$3;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    .line 50
    .line 51
    const-string v0, "\u4f5c\u5f0a\u7801\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    .line 52
    .line 53
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$3;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/papa91/arc/MenuFrameActivity;->cheatCode:Landroid/widget/EditText;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->checkCheatCode(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$3;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/papa91/arc/MenuFrameActivity;->context:Landroid/content/Context;

    .line 78
    .line 79
    const-string v0, "\u4f5c\u5f0a\u7801\u683c\u5f0f\u6709\u8bef\uff01"

    .line 80
    .line 81
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    :try_start_0
    new-instance v0, Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity$3;->val$info:Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 88
    .line 89
    iget-boolean v1, v1, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 90
    .line 91
    iget-object v2, p0, Lcom/papa91/arc/MenuFrameActivity$3;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 92
    .line 93
    iget-object v2, v2, Lcom/papa91/arc/MenuFrameActivity;->cheatName:Landroid/widget/EditText;

    .line 94
    .line 95
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    iget-object v3, p0, Lcom/papa91/arc/MenuFrameActivity$3;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 104
    .line 105
    iget-object v3, v3, Lcom/papa91/arc/MenuFrameActivity;->cheatCode:Landroid/widget/EditText;

    .line 106
    .line 107
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    const/4 v4, 0x0

    .line 116
    invoke-direct {v0, v1, v4, v2, v3}, Lorg/ppsspp/ppsspp/EditCheatInfo;-><init>(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget v1, p0, Lcom/papa91/arc/MenuFrameActivity$3;->val$index:I

    .line 120
    .line 121
    invoke-static {v1, v0}, Lorg/ppsspp/ppsspp/NativeApp;->modifyEditCheat(ILorg/ppsspp/ppsspp/EditCheatInfo;)V

    .line 122
    .line 123
    .line 124
    sget-object v1, Lcom/papa91/arc/MenuFrameActivity;->editCheatInfos:Ljava/util/List;

    .line 125
    .line 126
    iget v2, p0, Lcom/papa91/arc/MenuFrameActivity$3;->val$index:I

    .line 127
    .line 128
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    sget-object v1, Lcom/papa91/arc/MenuFrameActivity;->editCheatInfos:Ljava/util/List;

    .line 132
    .line 133
    iget v2, p0, Lcom/papa91/arc/MenuFrameActivity$3;->val$index:I

    .line 134
    .line 135
    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$3;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 139
    .line 140
    iget-object v0, v0, Lcom/papa91/arc/MenuFrameActivity;->cheatingAdapter:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

    .line 141
    .line 142
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :catchall_0
    move-exception p1

    .line 147
    goto :goto_1

    .line 148
    :catch_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    const-string v0, "\u4f5c\u5f0a\u7801\u6dfb\u52a0\u5931\u8d25\uff01"

    .line 153
    .line 154
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .line 156
    .line 157
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$3;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 158
    .line 159
    iget-object p1, p1, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :goto_1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$3;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 166
    .line 167
    iget-object v0, v0, Lcom/papa91/arc/MenuFrameActivity;->cheatAddDialog:Landroid/app/Dialog;

    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 170
    .line 171
    .line 172
    throw p1
.end method

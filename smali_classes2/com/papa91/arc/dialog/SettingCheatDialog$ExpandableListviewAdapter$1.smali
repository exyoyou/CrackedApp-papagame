.class Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

.field final synthetic val$gCheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;Lorg/ppsspp/ppsspp/CheatInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->val$gCheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

    .line 4
    .line 5
    iput p3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->val$groupPosition:I

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
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    .line 6
    .line 7
    if-ne p1, v0, :cond_7

    .line 8
    .line 9
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-lez p1, :cond_6

    .line 18
    .line 19
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 22
    .line 23
    iget-object v0, p1, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    .line 24
    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    invoke-static {p1}, Lcom/papa91/arc/dialog/SettingCheatDialog;->access$100(Lcom/papa91/arc/dialog/SettingCheatDialog;)Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    instance-of p1, p1, Lcom/papa91/arc/EmuActivity_psp;

    .line 32
    .line 33
    if-nez p1, :cond_4

    .line 34
    .line 35
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    .line 40
    .line 41
    invoke-interface {p1}, Lcom/papa91/arc/view/IEmulator;->isNetAvailable()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/papa91/arc/dialog/SettingCheatDialog;->access$200(Lcom/papa91/arc/dialog/SettingCheatDialog;)Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    .line 56
    .line 57
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->showShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 64
    .line 65
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    .line 66
    .line 67
    invoke-interface {p1}, Lcom/papa91/arc/view/IEmulator;->getCheatLoaded()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_2

    .line 72
    .line 73
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    .line 78
    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    invoke-interface {p1}, Lcom/papa91/arc/view/IEmulator;->retryGetGoldFingerConfig()V

    .line 82
    .line 83
    .line 84
    :cond_1
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/papa91/arc/dialog/SettingCheatDialog;->access$300(Lcom/papa91/arc/dialog/SettingCheatDialog;)Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string v0, "\u6b63\u5728\u83b7\u53d6\u91d1\u624b\u6307\u914d\u7f6e\uff0c\u8bf7\u7a0d\u540e..."

    .line 93
    .line 94
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->showShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_2
    const/4 v0, 0x2

    .line 99
    if-ne p1, v0, :cond_4

    .line 100
    .line 101
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 102
    .line 103
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 104
    .line 105
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    .line 106
    .line 107
    if-eqz p1, :cond_3

    .line 108
    .line 109
    invoke-interface {p1}, Lcom/papa91/arc/view/IEmulator;->retryGetGoldFingerConfig()V

    .line 110
    .line 111
    .line 112
    :cond_3
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 113
    .line 114
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 115
    .line 116
    invoke-static {p1}, Lcom/papa91/arc/dialog/SettingCheatDialog;->access$400(Lcom/papa91/arc/dialog/SettingCheatDialog;)Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const-string v0, "\u83b7\u53d6\u91d1\u624b\u6307\u914d\u7f6e\u5931\u8d25\uff0c\u6b63\u5728\u91cd\u65b0\u83b7\u53d6"

    .line 121
    .line 122
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->showShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_4
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->val$gCheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

    .line 127
    .line 128
    iget p1, p1, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    .line 129
    .line 130
    if-nez p1, :cond_5

    .line 131
    .line 132
    const/4 p1, 0x1

    .line 133
    goto :goto_0

    .line 134
    :cond_5
    const/4 p1, 0x0

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 136
    .line 137
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 138
    .line 139
    iget v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->val$groupPosition:I

    .line 140
    .line 141
    invoke-virtual {v0, v1, p1}, Lcom/papa91/arc/dialog/SettingDialog;->cheatInfoEnable(II)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->val$gCheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

    .line 145
    .line 146
    iput p1, v0, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_6
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 150
    .line 151
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 152
    .line 153
    const-string v0, "1"

    .line 154
    .line 155
    filled-new-array {v0}, [Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {p1, v0}, Lcom/papa91/arc/dialog/SettingDialog;->showVip([Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :goto_1
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 163
    .line 164
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 165
    .line 166
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 175
    .line 176
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 183
    .line 184
    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 185
    .line 186
    invoke-virtual {v1}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {p1, v0, v1}, Lcom/papa91/arc/common/constants/StatIntents;->statOpenGoldfinger(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 194
    .line 195
    invoke-virtual {p1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 196
    .line 197
    .line 198
    :cond_7
    return-void
.end method

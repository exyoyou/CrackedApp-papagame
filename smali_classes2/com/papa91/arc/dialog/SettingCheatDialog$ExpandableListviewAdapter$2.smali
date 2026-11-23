.class Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

.field final synthetic val$cheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

.field final synthetic val$childPosition:I

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;Lorg/ppsspp/ppsspp/CheatInfo;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->val$cheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

    .line 4
    .line 5
    iput p3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->val$groupPosition:I

    .line 6
    .line 7
    iput p4, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->val$childPosition:I

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
    .locals 4

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
    if-ne p1, v0, :cond_6

    .line 8
    .line 9
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

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
    if-lez p1, :cond_5

    .line 18
    .line 19
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 22
    .line 23
    iget-object v0, p1, Lcom/papa91/arc/dialog/SettingDialog;->emulatorListener:Lcom/papa91/arc/view/IEmulator;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-static {p1}, Lcom/papa91/arc/dialog/SettingCheatDialog;->access$700(Lcom/papa91/arc/dialog/SettingCheatDialog;)Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    instance-of p1, p1, Lcom/papa91/arc/EmuActivity_psp;

    .line 32
    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

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
    const-string v0, "\u6b63\u5728\u83b7\u53d6\u91d1\u624b\u6307\u914d\u7f6e\uff0c\u8bf7\u7a0d\u540e..."

    .line 46
    .line 47
    if-nez p1, :cond_0

    .line 48
    .line 49
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/papa91/arc/dialog/SettingCheatDialog;->access$800(Lcom/papa91/arc/dialog/SettingCheatDialog;)Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->showShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

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
    if-nez p1, :cond_1

    .line 72
    .line 73
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/papa91/arc/dialog/SettingCheatDialog;->access$900(Lcom/papa91/arc/dialog/SettingCheatDialog;)Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_1
    const/4 v0, 0x2

    .line 86
    if-ne p1, v0, :cond_2

    .line 87
    .line 88
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/papa91/arc/dialog/SettingCheatDialog;->access$1000(Lcom/papa91/arc/dialog/SettingCheatDialog;)Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string v0, "\u83b7\u53d6\u91d1\u624b\u6307\u914d\u7f6e\u5931\u8d25"

    .line 97
    .line 98
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_2
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->val$cheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

    .line 103
    .line 104
    iget p1, p1, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    .line 105
    .line 106
    const/4 v0, 0x0

    .line 107
    if-nez p1, :cond_3

    .line 108
    .line 109
    const/4 p1, 0x1

    .line 110
    goto :goto_0

    .line 111
    :cond_3
    const/4 p1, 0x0

    .line 112
    :goto_0
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 113
    .line 114
    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 115
    .line 116
    iget v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->val$groupPosition:I

    .line 117
    .line 118
    iget v3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->val$childPosition:I

    .line 119
    .line 120
    invoke-virtual {v1, v2, v3}, Lcom/papa91/arc/dialog/SettingDialog;->cheatInfoEnable(II)V

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 124
    .line 125
    iget v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->val$groupPosition:I

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->getGroup(I)Lorg/ppsspp/ppsspp/CheatInfo;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iget-object v1, v1, Lorg/ppsspp/ppsspp/CheatInfo;->option:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-eqz v2, :cond_4

    .line 142
    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Lorg/ppsspp/ppsspp/CheatInfo;

    .line 148
    .line 149
    iput v0, v2, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->val$cheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

    .line 153
    .line 154
    iput p1, v0, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_5
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 158
    .line 159
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 160
    .line 161
    const-string v0, "1"

    .line 162
    .line 163
    filled-new-array {v0}, [Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p1, v0}, Lcom/papa91/arc/dialog/SettingDialog;->showVip([Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :goto_2
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 171
    .line 172
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 183
    .line 184
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 191
    .line 192
    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 193
    .line 194
    invoke-virtual {v1}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {p1, v0, v1}, Lcom/papa91/arc/common/constants/StatIntents;->statOpenGoldfinger(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    .line 202
    .line 203
    invoke-virtual {p1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 204
    .line 205
    .line 206
    :cond_6
    return-void
.end method

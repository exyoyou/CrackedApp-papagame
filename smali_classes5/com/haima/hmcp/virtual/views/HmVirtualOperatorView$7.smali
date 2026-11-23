.class Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->lambda$onClick$0(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;)V

    return-void
.end method

.method public static synthetic b(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->lambda$onClick$1(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;)V

    return-void
.end method

.method private synthetic lambda$onClick$0(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$900(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Lcom/haima/hmcp/virtual/listeners/OperateListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$900(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Lcom/haima/hmcp/virtual/listeners/OperateListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/haima/hmcp/virtual/listeners/OperateListener;->onAdd(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private synthetic lambda$onClick$1(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$900(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Lcom/haima/hmcp/virtual/listeners/OperateListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$900(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Lcom/haima/hmcp/virtual/listeners/OperateListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/haima/hmcp/virtual/listeners/OperateListener;->onAdd(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$800(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "top act null"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sget v1, Lcom/haima/hmcp/R$id;->tvExit:I

    .line 26
    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    new-instance p1, Lcom/haima/hmcp/virtual/dialogs/EnsureDialog;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$1;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$1;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;)V

    .line 40
    .line 41
    .line 42
    const-string v2, "\u786e\u5b9a\u8981\u9000\u51fa\u7f16\u8f91\u9875\u9762\uff1f"

    .line 43
    .line 44
    invoke-direct {p1, v0, v2, v1}, Lcom/haima/hmcp/virtual/dialogs/EnsureDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/dialogs/EnsureDialog;->show()V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    sget v1, Lcom/haima/hmcp/R$id;->tvAddBtn:I

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    if-ne v0, v1, :cond_3

    .line 60
    .line 61
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$1000(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    const/4 v0, 0x0

    .line 68
    if-ne p1, v2, :cond_2

    .line 69
    .line 70
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 71
    .line 72
    new-instance v1, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    new-instance v3, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$2;

    .line 81
    .line 82
    invoke-direct {v3, p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$2;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {v1, v2, v0, v3}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;-><init>(Landroid/content/Context;ZLcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$AddListener;)V

    .line 86
    .line 87
    .line 88
    invoke-static {p1, v1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$1102(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;)Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 92
    .line 93
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$1100(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->show()V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 103
    .line 104
    new-instance v1, Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog;

    .line 105
    .line 106
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 107
    .line 108
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    new-instance v3, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$3;

    .line 113
    .line 114
    invoke-direct {v3, p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$3;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {v1, v2, v0, v3}, Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog;-><init>(Landroid/content/Context;ZLcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$AddListener;)V

    .line 118
    .line 119
    .line 120
    invoke-static {p1, v1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$1102(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;)Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 124
    .line 125
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$1100(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->show()V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    sget v1, Lcom/haima/hmcp/R$id;->tvSave:I

    .line 139
    .line 140
    if-ne v0, v1, :cond_4

    .line 141
    .line 142
    new-instance p1, Lcom/haima/hmcp/virtual/dialogs/EnsureDialog;

    .line 143
    .line 144
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    new-instance v1, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$4;

    .line 151
    .line 152
    invoke-direct {v1, p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$4;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;)V

    .line 153
    .line 154
    .line 155
    const-string v2, "\u4fdd\u5b58\u5f53\u524d\u65b9\u6848\u5e76\u8fd4\u56de\u6e38\u620f\uff1f"

    .line 156
    .line 157
    invoke-direct {p1, v0, v2, v1}, Lcom/haima/hmcp/virtual/dialogs/EnsureDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/dialogs/EnsureDialog;->show()V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    sget v1, Lcom/haima/hmcp/R$id;->tvReset:I

    .line 170
    .line 171
    if-ne v0, v1, :cond_5

    .line 172
    .line 173
    new-instance p1, Lcom/haima/hmcp/virtual/dialogs/EnsureDialog;

    .line 174
    .line 175
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 176
    .line 177
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    new-instance v1, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$5;

    .line 182
    .line 183
    invoke-direct {v1, p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$5;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;)V

    .line 184
    .line 185
    .line 186
    const-string v2, "\u786e\u5b9a\u8981\u6062\u590d\u9ed8\u8ba4\u65b9\u6848\uff1f"

    .line 187
    .line 188
    invoke-direct {p1, v0, v2, v1}, Lcom/haima/hmcp/virtual/dialogs/EnsureDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/dialogs/EnsureDialog;->show()V

    .line 192
    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    sget v1, Lcom/haima/hmcp/R$id;->tvDelete:I

    .line 200
    .line 201
    if-ne v0, v1, :cond_6

    .line 202
    .line 203
    new-instance p1, Lcom/haima/hmcp/virtual/dialogs/EnsureDialog;

    .line 204
    .line 205
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 206
    .line 207
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    new-instance v1, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$6;

    .line 212
    .line 213
    invoke-direct {v1, p0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7$6;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;)V

    .line 214
    .line 215
    .line 216
    const-string v2, "\u786e\u5b9a\u5220\u9664\u6b64\u6309\u94ae\u5417\uff1f"

    .line 217
    .line 218
    invoke-direct {p1, v0, v2, v1}, Lcom/haima/hmcp/virtual/dialogs/EnsureDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/dialogs/EnsureDialog;->show()V

    .line 222
    .line 223
    .line 224
    goto :goto_0

    .line 225
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    sget v0, Lcom/haima/hmcp/R$id;->tvAddMoreBtn:I

    .line 230
    .line 231
    if-ne p1, v0, :cond_8

    .line 232
    .line 233
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 234
    .line 235
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$1000(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)I

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    if-ne p1, v2, :cond_7

    .line 240
    .line 241
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 242
    .line 243
    new-instance v0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;

    .line 244
    .line 245
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 246
    .line 247
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    new-instance v3, Lcom/haima/hmcp/virtual/views/f;

    .line 252
    .line 253
    invoke-direct {v3, p0}, Lcom/haima/hmcp/virtual/views/f;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;)V

    .line 254
    .line 255
    .line 256
    invoke-direct {v0, v1, v2, v3}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;-><init>(Landroid/content/Context;ZLcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$AddListener;)V

    .line 257
    .line 258
    .line 259
    invoke-static {p1, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$1102(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;)Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;

    .line 260
    .line 261
    .line 262
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 263
    .line 264
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$1100(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->show()V

    .line 269
    .line 270
    .line 271
    goto :goto_0

    .line 272
    :cond_7
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 273
    .line 274
    new-instance v0, Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog;

    .line 275
    .line 276
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 277
    .line 278
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    new-instance v3, Lcom/haima/hmcp/virtual/views/g;

    .line 283
    .line 284
    invoke-direct {v3, p0}, Lcom/haima/hmcp/virtual/views/g;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;)V

    .line 285
    .line 286
    .line 287
    invoke-direct {v0, v1, v2, v3}, Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog;-><init>(Landroid/content/Context;ZLcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog$AddListener;)V

    .line 288
    .line 289
    .line 290
    invoke-static {p1, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$1102(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;)Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;

    .line 291
    .line 292
    .line 293
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView$7;->this$0:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 294
    .line 295
    invoke-static {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;->access$1100(Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;)Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->show()V

    .line 300
    .line 301
    .line 302
    :cond_8
    :goto_0
    return-void
.end method

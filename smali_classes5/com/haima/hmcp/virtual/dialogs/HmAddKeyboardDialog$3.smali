.class Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$3;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lcom/haima/hmcp/R$id;->imgRockerWASD:I

    .line 6
    .line 7
    const-string v2, "\u6b64\u7c7b\u578b\u4e0d\u652f\u6301\u7ec4\u5408\u952e"

    .line 8
    .line 9
    const/4 v3, 0x7

    .line 10
    const/16 v4, 0x140

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$3;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;

    .line 15
    .line 16
    iget-boolean v0, p1, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->isMoreKeyMode:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->showToast(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const/4 p1, 0x6

    .line 25
    const-string v0, "WASD"

    .line 26
    .line 27
    move-object v7, v0

    .line 28
    const/4 v8, 0x7

    .line 29
    const/4 v9, 0x6

    .line 30
    :goto_0
    const/16 v10, 0x140

    .line 31
    .line 32
    const/16 v11, 0x140

    .line 33
    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    sget v1, Lcom/haima/hmcp/R$id;->imgRockerTBLR:I

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    if-ne v0, v1, :cond_3

    .line 44
    .line 45
    iget-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$3;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;

    .line 46
    .line 47
    iget-boolean v0, p1, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->isMoreKeyMode:Z

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->showToast(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    const-string v0, "UDLR"

    .line 56
    .line 57
    move-object v7, v0

    .line 58
    const/4 v8, 0x0

    .line 59
    const/4 v9, 0x7

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    sget v1, Lcom/haima/hmcp/R$id;->imgMouseMid:I

    .line 66
    .line 67
    const/16 v4, 0x6c

    .line 68
    .line 69
    if-ne v0, v1, :cond_4

    .line 70
    .line 71
    const/16 v3, 0x201

    .line 72
    .line 73
    const/16 p1, 0xa

    .line 74
    .line 75
    const-string v0, "MM"

    .line 76
    .line 77
    move-object v7, v0

    .line 78
    const/16 v8, 0x201

    .line 79
    .line 80
    const/16 v9, 0xa

    .line 81
    .line 82
    :goto_1
    const/16 v10, 0x6c

    .line 83
    .line 84
    const/16 v11, 0x6c

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    sget v1, Lcom/haima/hmcp/R$id;->imgMouseLeft:I

    .line 92
    .line 93
    if-ne v0, v1, :cond_5

    .line 94
    .line 95
    const/16 v3, 0x200

    .line 96
    .line 97
    const/16 p1, 0x8

    .line 98
    .line 99
    const-string v0, "ML"

    .line 100
    .line 101
    move-object v7, v0

    .line 102
    const/16 v8, 0x200

    .line 103
    .line 104
    const/16 v9, 0x8

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    sget v1, Lcom/haima/hmcp/R$id;->imgMouseRight:I

    .line 112
    .line 113
    if-ne v0, v1, :cond_6

    .line 114
    .line 115
    const/16 v3, 0x202

    .line 116
    .line 117
    const/16 p1, 0x9

    .line 118
    .line 119
    const-string v0, "MR"

    .line 120
    .line 121
    move-object v7, v0

    .line 122
    const/16 v8, 0x202

    .line 123
    .line 124
    const/16 v9, 0x9

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    sget v1, Lcom/haima/hmcp/R$id;->imgMouseWheelUp:I

    .line 132
    .line 133
    const/16 v3, 0x203

    .line 134
    .line 135
    if-ne v0, v1, :cond_7

    .line 136
    .line 137
    const/16 p1, 0xb

    .line 138
    .line 139
    const-string v0, "WU"

    .line 140
    .line 141
    move-object v7, v0

    .line 142
    const/16 v8, 0x203

    .line 143
    .line 144
    const/16 v9, 0xb

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    sget v0, Lcom/haima/hmcp/R$id;->imgMouseWheelDown:I

    .line 152
    .line 153
    if-ne p1, v0, :cond_8

    .line 154
    .line 155
    const/16 p1, 0xc

    .line 156
    .line 157
    const-string v0, "WD"

    .line 158
    .line 159
    move-object v7, v0

    .line 160
    const/16 v8, 0x203

    .line 161
    .line 162
    const/16 v9, 0xc

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_8
    const-string v0, ""

    .line 166
    .line 167
    const/4 v3, 0x1

    .line 168
    move-object v7, v0

    .line 169
    const/4 v8, 0x0

    .line 170
    const/4 v9, 0x1

    .line 171
    goto :goto_1

    .line 172
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_9

    .line 177
    .line 178
    return-void

    .line 179
    :cond_9
    iget-object v6, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog$3;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;

    .line 180
    .line 181
    invoke-static/range {v6 .. v11}, Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;->access$400(Lcom/haima/hmcp/virtual/dialogs/HmAddKeyboardDialog;Ljava/lang/String;IIII)V

    .line 182
    .line 183
    .line 184
    return-void
.end method

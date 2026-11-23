.class Lcom/haima/hmcp/model/LocalKeyboardModel$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/model/LocalKeyboardModel;->init(Landroid/content/Context;Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/model/LocalKeyboardModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$2;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$300()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "\u952e\u76d8onKey onEditorAction:actionId:"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", KeyEvent = "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    packed-switch p2, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    const-string p1, ""

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_0
    const-string p1, "IME_ACTION_PREVIOUS"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_1
    const-string p1, "IME_ACTION_DONE"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :pswitch_2
    const-string p1, "IME_ACTION_NEXT"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :pswitch_3
    const-string p1, "IME_ACTION_SEND"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_4
    const-string p1, "IME_ACTION_SEARCH"

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_5
    const-string p1, "IME_ACTION_GO"

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :pswitch_6
    const-string p1, "IME_ACTION_NONE"

    .line 58
    .line 59
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-nez p2, :cond_0

    .line 64
    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v0, "IME:"

    .line 71
    .line 72
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    goto :goto_1

    .line 83
    :cond_0
    const/4 p1, 0x0

    .line 84
    :goto_1
    iget-object p2, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$2;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 85
    .line 86
    invoke-static {p2}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$700(Lcom/haima/hmcp/model/LocalKeyboardModel;)Lcom/haima/hmcp/model/LocalKeyboardModel$ImeActionListener;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    if-eqz p2, :cond_1

    .line 91
    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-nez p2, :cond_1

    .line 97
    .line 98
    invoke-static {}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$300()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v1, "send action id order: "

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {p2, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object p2, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$2;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 123
    .line 124
    invoke-static {p2}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$700(Lcom/haima/hmcp/model/LocalKeyboardModel;)Lcom/haima/hmcp/model/LocalKeyboardModel$ImeActionListener;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-interface {p2, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel$ImeActionListener;->onImeAction(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_1
    if-eqz p3, :cond_2

    .line 132
    .line 133
    invoke-static {}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$300()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    new-instance p2, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v0, "\u952e\u76d8onKey onEditorAction:"

    .line 143
    .line 144
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 148
    .line 149
    .line 150
    move-result p3

    .line 151
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const/4 p1, 0x0

    .line 162
    return p1

    .line 163
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_3

    .line 168
    .line 169
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$2;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 170
    .line 171
    const-string p2, "keyDown"

    .line 172
    .line 173
    const/16 p3, 0xd

    .line 174
    .line 175
    invoke-static {p1, p2, p3}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$500(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;I)V

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$2;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 179
    .line 180
    const-string p2, "keyUp"

    .line 181
    .line 182
    invoke-static {p1, p2, p3}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$500(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;I)V

    .line 183
    .line 184
    .line 185
    :cond_3
    const/4 p1, 0x1

    .line 186
    return p1

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

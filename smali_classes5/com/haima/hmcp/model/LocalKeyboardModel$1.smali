.class Lcom/haima/hmcp/model/LocalKeyboardModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/widgets/HmcpHideEditText$OnHmKeyListener;


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
    iput-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$1;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$1;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$000(Lcom/haima/hmcp/model/LocalKeyboardModel;I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$1;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$100(Lcom/haima/hmcp/model/LocalKeyboardModel;)Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Lcom/haima/hmcp/model/LocalKeyboardModel;->isGoogleInputMethod(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const-string v2, ") not support send"

    .line 26
    .line 27
    const-string v3, "("

    .line 28
    .line 29
    const-string v4, "onKeyDown: "

    .line 30
    .line 31
    const/16 v5, 0x42

    .line 32
    .line 33
    const/16 v6, 0x43

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$1;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 38
    .line 39
    invoke-static {v0, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$200(Lcom/haima/hmcp/model/LocalKeyboardModel;I)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    invoke-static {}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$300()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return v1

    .line 81
    :cond_1
    if-eq p1, v6, :cond_2

    .line 82
    .line 83
    if-eq p1, v5, :cond_2

    .line 84
    .line 85
    invoke-static {}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$300()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return v1

    .line 121
    :cond_2
    if-ne p1, v6, :cond_3

    .line 122
    .line 123
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$1;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 124
    .line 125
    invoke-static {v0, v1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$402(Lcom/haima/hmcp/model/LocalKeyboardModel;Z)Z

    .line 126
    .line 127
    .line 128
    :cond_3
    const-string v0, "keyDown"

    .line 129
    .line 130
    if-ne p1, v5, :cond_4

    .line 131
    .line 132
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$1;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 133
    .line 134
    const/16 p2, 0xd

    .line 135
    .line 136
    invoke-static {p1, v0, p2}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$500(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;I)V

    .line 137
    .line 138
    .line 139
    return v1

    .line 140
    :cond_4
    invoke-static {p1}, Lcom/haima/hmcp/utils/KeyMapUtil;->androidKeyCode2PASSKey(I)I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-eqz p1, :cond_5

    .line 145
    .line 146
    iget-object p2, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$1;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 147
    .line 148
    invoke-static {p2, v0, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$500(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;I)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_5
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$1;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 153
    .line 154
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    invoke-static {p2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    const-string v0, "1"

    .line 163
    .line 164
    invoke-static {p1, v0, p2}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$600(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :goto_0
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$1;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$000(Lcom/haima/hmcp/model/LocalKeyboardModel;I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-static {p2}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->isJoyStick(Landroid/view/InputEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v2, "0"

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$1;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v0, v2, v3}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$600(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$1;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$100(Lcom/haima/hmcp/model/LocalKeyboardModel;)Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v0, v3}, Lcom/haima/hmcp/model/LocalKeyboardModel;->isGoogleInputMethod(Landroid/content/Context;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const-string v3, ") not support send"

    .line 47
    .line 48
    const-string v4, "("

    .line 49
    .line 50
    const-string v5, "onKeyUp: "

    .line 51
    .line 52
    const/16 v6, 0x42

    .line 53
    .line 54
    const/16 v7, 0x43

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$1;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 59
    .line 60
    invoke-static {v0, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$200(Lcom/haima/hmcp/model/LocalKeyboardModel;I)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    invoke-static {}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$300()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return v1

    .line 102
    :cond_2
    if-eq p1, v7, :cond_3

    .line 103
    .line 104
    if-eq p1, v6, :cond_3

    .line 105
    .line 106
    invoke-static {}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$300()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return v1

    .line 142
    :cond_3
    if-ne p1, v7, :cond_4

    .line 143
    .line 144
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$1;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 145
    .line 146
    const/4 v3, 0x1

    .line 147
    invoke-static {v0, v3}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$402(Lcom/haima/hmcp/model/LocalKeyboardModel;Z)Z

    .line 148
    .line 149
    .line 150
    :cond_4
    const-string v0, "keyUp"

    .line 151
    .line 152
    if-ne p1, v6, :cond_5

    .line 153
    .line 154
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$1;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 155
    .line 156
    const/16 p2, 0xd

    .line 157
    .line 158
    invoke-static {p1, v0, p2}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$500(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;I)V

    .line 159
    .line 160
    .line 161
    return v1

    .line 162
    :cond_5
    invoke-static {p1}, Lcom/haima/hmcp/utils/KeyMapUtil;->androidKeyCode2PASSKey(I)I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-eqz p1, :cond_6

    .line 167
    .line 168
    iget-object p2, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$1;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 169
    .line 170
    invoke-static {p2, v0, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$500(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_6
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$1;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 175
    .line 176
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    invoke-static {p2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-static {p1, v2, p2}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$600(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :goto_0
    return v1
.end method

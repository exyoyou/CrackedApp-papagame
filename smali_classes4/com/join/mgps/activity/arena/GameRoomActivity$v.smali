.class Lcom/join/mgps/activity/arena/GameRoomActivity$v;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/arena/GameRoomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/arena/GameRoomActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$200(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$910(Lcom/join/mgps/activity/arena/GameRoomActivity;)I

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$900(Lcom/join/mgps/activity/arena/GameRoomActivity;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const-wide/16 v0, 0x3e8

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    if-gtz p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$1000(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v3, 0x1

    .line 36
    new-array v3, v3, [Ljava/lang/Object;

    .line 37
    .line 38
    const-string v4, "\u5bf9\u4e0d\u8d77\uff0c\u60a8\u957f\u65f6\u95f4\u672a\u5f00\u59cb\u6e38\u620f\uff0c\u60a8\u5df2\u88ab\u8e22\u51fa\u623f\u95f4!"

    .line 39
    .line 40
    aput-object v4, v3, v2

    .line 41
    .line 42
    const-string v2, "toast_kic_out_room"

    .line 43
    .line 44
    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$1100(Lcom/join/mgps/activity/arena/GameRoomActivity;)Landroid/os/Handler;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const/16 v2, 0x66

    .line 54
    .line 55
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 56
    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$300(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    sget-object v3, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    .line 67
    .line 68
    const/16 v4, 0x64

    .line 69
    .line 70
    const-string v5, "s)"

    .line 71
    .line 72
    const-string v6, "("

    .line 73
    .line 74
    if-ne p1, v3, :cond_2

    .line 75
    .line 76
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->showTitleMessage:Landroid/widget/TextView;

    .line 79
    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v7, "\u5bf9\u65b9\u5df2\u51c6\u5907\uff0c\u8bf7\u5f00\u59cb\u6e38\u620f("

    .line 86
    .line 87
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v7, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 91
    .line 92
    invoke-static {v7}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$900(Lcom/join/mgps/activity/arena/GameRoomActivity;)I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v7, ")"

    .line 100
    .line 101
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGameM:Landroid/widget/TextView;

    .line 114
    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v6, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 124
    .line 125
    invoke-static {v6}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$900(Lcom/join/mgps/activity/arena/GameRoomActivity;)I

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 143
    .line 144
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGameM:Landroid/widget/TextView;

    .line 145
    .line 146
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 150
    .line 151
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGameI:Landroid/widget/ImageView;

    .line 152
    .line 153
    const v2, 0x7f080e64

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 160
    .line 161
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$1200(Lcom/join/mgps/activity/arena/GameRoomActivity;)Landroid/os/Handler;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 170
    .line 171
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGameM:Landroid/widget/TextView;

    .line 172
    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-object v6, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 182
    .line 183
    invoke-static {v6}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$900(Lcom/join/mgps/activity/arena/GameRoomActivity;)I

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    .line 199
    .line 200
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 201
    .line 202
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGameM:Landroid/widget/TextView;

    .line 203
    .line 204
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 208
    .line 209
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->btnEntranceGameI:Landroid/widget/ImageView;

    .line 210
    .line 211
    const v2, 0x7f080e53

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    .line 216
    .line 217
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 218
    .line 219
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$1200(Lcom/join/mgps/activity/arena/GameRoomActivity;)Landroid/os/Handler;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 224
    .line 225
    .line 226
    :goto_0
    return-void
.end method

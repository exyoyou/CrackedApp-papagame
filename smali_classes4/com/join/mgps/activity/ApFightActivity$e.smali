.class Lcom/join/mgps/activity/ApFightActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/callbacks/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ApFightActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ApFightActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ApFightActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$100(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->zxing_lay:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->zxing_tip_lay:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    iput-boolean v1, p1, Lcom/join/mgps/activity/ApFightActivity;->modeSwitchEnable:Z

    .line 26
    .line 27
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/activity/ApFightActivity;->hideFrame()V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/activity/ApFightActivity;->closeBeginAnim()V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$000(Lcom/join/mgps/activity/ApFightActivity;)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_0

    .line 56
    .line 57
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 60
    .line 61
    const v2, 0x7f0800b4

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$700(Lcom/join/mgps/activity/ApFightActivity;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 88
    .line 89
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn:Landroid/widget/Button;

    .line 90
    .line 91
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 95
    .line 96
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->fightStart:Landroid/widget/ImageView;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/join/mgps/activity/ApFightActivity;->closeBeginAnim()V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/join/mgps/activity/ApFightActivity;->hideFrame()V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/join/mgps/activity/ApFightActivity;->revertHint()V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 117
    .line 118
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    .line 119
    .line 120
    const-string v0, ""

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/join/mgps/activity/ApFightActivity;->dismissLoading()V

    .line 128
    .line 129
    .line 130
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 135
    .line 136
    const-string v1, "\u521b\u5efa\u70ed\u70b9\u5931\u8d25!"

    .line 137
    .line 138
    const/4 v2, 0x2

    .line 139
    invoke-virtual {p1, v0, v1, v2}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_0
    new-instance p1, Lcom/join/mgps/dialog/w0;

    .line 144
    .line 145
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 146
    .line 147
    const v2, 0x7f13017f

    .line 148
    .line 149
    .line 150
    invoke-direct {p1, v0, v2}, Lcom/join/mgps/dialog/w0;-><init>(Landroid/content/Context;I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 157
    .line 158
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 159
    .line 160
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 161
    .line 162
    .line 163
    :goto_0
    return-void
.end method

.method public b()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$100(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->zxing_lay:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->zxing_tip_lay:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    iput-boolean v2, v0, Lcom/join/mgps/activity/ApFightActivity;->modeSwitchEnable:Z

    .line 26
    .line 27
    iput-boolean v2, v0, Lcom/join/mgps/activity/ApFightActivity;->apBtnEnable:Z

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->closeBeginAnim()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->hideFrame()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$000(Lcom/join/mgps/activity/ApFightActivity;)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const-string v3, "\u8fde\u63a5\u5df2\u65ad\u5f00"

    .line 58
    .line 59
    const-string v4, "\u8fde\u63a5\u5df2\u65ad\u5f00,\u7b49\u5f85\u5c0f\u4f19\u4f34\u8fde\u63a5"

    .line 60
    .line 61
    const-string v5, ""

    .line 62
    .line 63
    const-string v6, "\u670d\u52a1\u5668\u65ad\u5f00\u8bf7\u91cd\u65b0\u8fde\u63a5"

    .line 64
    .line 65
    const v7, 0x7f0800b4

    .line 66
    .line 67
    .line 68
    const-string v8, "\u6211\u662f\u5ba2\u673a"

    .line 69
    .line 70
    const-string v9, "\u6211\u662f\u4e3b\u673a"

    .line 71
    .line 72
    const v10, 0x7f13017f

    .line 73
    .line 74
    .line 75
    const v11, 0x7f080e13

    .line 76
    .line 77
    .line 78
    const/4 v12, 0x0

    .line 79
    if-nez v0, :cond_5

    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->lcon:Landroid/widget/ImageView;

    .line 84
    .line 85
    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$900(Lcom/join/mgps/activity/ApFightActivity;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$1000(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/Util/WifiUtils;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/WifiUtils;->isWifiConnect(Landroid/content/Context;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_0

    .line 109
    .line 110
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 111
    .line 112
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$1000(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/Util/WifiUtils;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/WifiUtils;->openWifi(Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 122
    .line 123
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_1

    .line 128
    .line 129
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 130
    .line 131
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-nez v0, :cond_2

    .line 140
    .line 141
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 142
    .line 143
    new-instance v1, Lcom/join/mgps/dialog/t0;

    .line 144
    .line 145
    iget-object v3, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 146
    .line 147
    invoke-direct {v1, v3, v10}, Lcom/join/mgps/dialog/t0;-><init>(Landroid/content/Context;I)V

    .line 148
    .line 149
    .line 150
    invoke-static {v0, v1}, Lcom/join/mgps/activity/ApFightActivity;->access$802(Lcom/join/mgps/activity/ApFightActivity;Lcom/join/mgps/dialog/t0;)Lcom/join/mgps/dialog/t0;

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 154
    .line 155
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 163
    .line 164
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    new-instance v1, Lcom/join/mgps/activity/ApFightActivity$e$a;

    .line 169
    .line 170
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ApFightActivity$e$a;-><init>(Lcom/join/mgps/activity/ApFightActivity$e;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/t0;->h(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 179
    .line 180
    .line 181
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 182
    .line 183
    iget-object v1, v0, Lcom/join/mgps/activity/ApFightActivity;->fightServerIcon:Landroid/widget/ImageView;

    .line 184
    .line 185
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 197
    .line 198
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBrandName:Landroid/widget/TextView;

    .line 199
    .line 200
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 204
    .line 205
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBrandName:Landroid/widget/TextView;

    .line 206
    .line 207
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 211
    .line 212
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$700(Lcom/join/mgps/activity/ApFightActivity;)V

    .line 213
    .line 214
    .line 215
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 216
    .line 217
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn:Landroid/widget/Button;

    .line 218
    .line 219
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 223
    .line 224
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 225
    .line 226
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 230
    .line 231
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 232
    .line 233
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 234
    .line 235
    .line 236
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 237
    .line 238
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    .line 239
    .line 240
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 244
    .line 245
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->hint:Landroid/widget/TextView;

    .line 246
    .line 247
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    .line 249
    .line 250
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 251
    .line 252
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->num:Landroid/widget/TextView;

    .line 253
    .line 254
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    .line 256
    .line 257
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 258
    .line 259
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->lcon:Landroid/widget/ImageView;

    .line 260
    .line 261
    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    .line 263
    .line 264
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 265
    .line 266
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    .line 267
    .line 268
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    .line 270
    .line 271
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 272
    .line 273
    iget-object v1, v0, Lcom/join/mgps/activity/ApFightActivity;->fightClientIcon:Landroid/widget/ImageView;

    .line 274
    .line 275
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    .line 285
    .line 286
    const/4 v0, 0x6

    .line 287
    sput v0, Lcom/join/mgps/activity/ApFightActivity;->step:I

    .line 288
    .line 289
    goto/16 :goto_4

    .line 290
    .line 291
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 292
    .line 293
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->mgFightServerManager:Lcom/join/mgps/helper/MGFightServerManager;

    .line 294
    .line 295
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightServerManager;->disConnect()V

    .line 296
    .line 297
    .line 298
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 299
    .line 300
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$1000(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/Util/WifiUtils;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    iget-object v6, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 305
    .line 306
    iget-object v6, v6, Lcom/join/mgps/activity/ApFightActivity;->apName:Ljava/lang/String;

    .line 307
    .line 308
    const-string v13, "12345678"

    .line 309
    .line 310
    invoke-virtual {v0, v6, v13, v12}, Lcom/join/mgps/Util/WifiUtils;->setHotSpot(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 311
    .line 312
    .line 313
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 314
    .line 315
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    if-eqz v0, :cond_4

    .line 320
    .line 321
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 322
    .line 323
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-eqz v0, :cond_4

    .line 332
    .line 333
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 334
    .line 335
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 340
    .line 341
    .line 342
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 343
    .line 344
    new-instance v6, Lcom/join/mgps/dialog/t0;

    .line 345
    .line 346
    iget-object v13, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 347
    .line 348
    invoke-direct {v6, v13, v10}, Lcom/join/mgps/dialog/t0;-><init>(Landroid/content/Context;I)V

    .line 349
    .line 350
    .line 351
    invoke-static {v0, v6}, Lcom/join/mgps/activity/ApFightActivity;->access$802(Lcom/join/mgps/activity/ApFightActivity;Lcom/join/mgps/dialog/t0;)Lcom/join/mgps/dialog/t0;

    .line 352
    .line 353
    .line 354
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 355
    .line 356
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 361
    .line 362
    .line 363
    goto :goto_1

    .line 364
    :catch_1
    move-exception v0

    .line 365
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 366
    .line 367
    .line 368
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 369
    .line 370
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBrandName:Landroid/widget/TextView;

    .line 371
    .line 372
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    .line 374
    .line 375
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 376
    .line 377
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBrandName:Landroid/widget/TextView;

    .line 378
    .line 379
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    .line 381
    .line 382
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 383
    .line 384
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$700(Lcom/join/mgps/activity/ApFightActivity;)V

    .line 385
    .line 386
    .line 387
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 388
    .line 389
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn:Landroid/widget/Button;

    .line 390
    .line 391
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 392
    .line 393
    .line 394
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 395
    .line 396
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 397
    .line 398
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 399
    .line 400
    .line 401
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 402
    .line 403
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 404
    .line 405
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 406
    .line 407
    .line 408
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 409
    .line 410
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 411
    .line 412
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 413
    .line 414
    .line 415
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 416
    .line 417
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    .line 418
    .line 419
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 420
    .line 421
    .line 422
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 423
    .line 424
    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->closeBeginAnim()V

    .line 425
    .line 426
    .line 427
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 428
    .line 429
    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->hideFrame()V

    .line 430
    .line 431
    .line 432
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 433
    .line 434
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->hint:Landroid/widget/TextView;

    .line 435
    .line 436
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    .line 438
    .line 439
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 440
    .line 441
    iget-object v2, v0, Lcom/join/mgps/activity/ApFightActivity;->fightClientIcon:Landroid/widget/ImageView;

    .line 442
    .line 443
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 452
    .line 453
    .line 454
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 455
    .line 456
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->fightStart:Landroid/widget/ImageView;

    .line 457
    .line 458
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    .line 460
    .line 461
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 462
    .line 463
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    .line 464
    .line 465
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    .line 467
    .line 468
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 469
    .line 470
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    invoke-virtual {v0, v3}, Lcom/join/mgps/dialog/t0;->j(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 478
    .line 479
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/t0;->g(I)V

    .line 484
    .line 485
    .line 486
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 487
    .line 488
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/t0;->c(I)V

    .line 493
    .line 494
    .line 495
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 496
    .line 497
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-virtual {v0, v12}, Lcom/join/mgps/dialog/t0;->a(I)V

    .line 502
    .line 503
    .line 504
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 505
    .line 506
    iget-object v1, v0, Lcom/join/mgps/activity/ApFightActivity;->fightServerIcon:Landroid/widget/ImageView;

    .line 507
    .line 508
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 517
    .line 518
    .line 519
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 520
    .line 521
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->num:Landroid/widget/TextView;

    .line 522
    .line 523
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    .line 525
    .line 526
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 527
    .line 528
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->lcon:Landroid/widget/ImageView;

    .line 529
    .line 530
    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 531
    .line 532
    .line 533
    goto/16 :goto_4

    .line 534
    .line 535
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 536
    .line 537
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$900(Lcom/join/mgps/activity/ApFightActivity;)Z

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    if-eqz v0, :cond_6

    .line 542
    .line 543
    :try_start_2
    new-instance v0, Lcom/join/mgps/dialog/v2;

    .line 544
    .line 545
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 546
    .line 547
    invoke-direct {v0, v1, v10}, Lcom/join/mgps/dialog/v2;-><init>(Landroid/content/Context;I)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 551
    .line 552
    .line 553
    goto :goto_2

    .line 554
    :catch_2
    move-exception v0

    .line 555
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 556
    .line 557
    .line 558
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 559
    .line 560
    iget-object v1, v0, Lcom/join/mgps/activity/ApFightActivity;->fightServerIcon:Landroid/widget/ImageView;

    .line 561
    .line 562
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 571
    .line 572
    .line 573
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 574
    .line 575
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBrandName:Landroid/widget/TextView;

    .line 576
    .line 577
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    .line 579
    .line 580
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 581
    .line 582
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBrandName:Landroid/widget/TextView;

    .line 583
    .line 584
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    .line 586
    .line 587
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 588
    .line 589
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$700(Lcom/join/mgps/activity/ApFightActivity;)V

    .line 590
    .line 591
    .line 592
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 593
    .line 594
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn:Landroid/widget/Button;

    .line 595
    .line 596
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 597
    .line 598
    .line 599
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 600
    .line 601
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 602
    .line 603
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 604
    .line 605
    .line 606
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 607
    .line 608
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 609
    .line 610
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 611
    .line 612
    .line 613
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 614
    .line 615
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    .line 616
    .line 617
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 618
    .line 619
    .line 620
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 621
    .line 622
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->hint:Landroid/widget/TextView;

    .line 623
    .line 624
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    .line 626
    .line 627
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 628
    .line 629
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->num:Landroid/widget/TextView;

    .line 630
    .line 631
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    .line 633
    .line 634
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 635
    .line 636
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->lcon:Landroid/widget/ImageView;

    .line 637
    .line 638
    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 639
    .line 640
    .line 641
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 642
    .line 643
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    .line 644
    .line 645
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    .line 647
    .line 648
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 649
    .line 650
    iget-object v1, v0, Lcom/join/mgps/activity/ApFightActivity;->fightClientIcon:Landroid/widget/ImageView;

    .line 651
    .line 652
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 661
    .line 662
    .line 663
    goto/16 :goto_4

    .line 664
    .line 665
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 666
    .line 667
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightServerManger:Lcom/join/mgps/helper/MGWifiFightServerManger;

    .line 668
    .line 669
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGWifiFightServerManger;->disConnect()V

    .line 670
    .line 671
    .line 672
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 673
    .line 674
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->mgWifiFightServerManger:Lcom/join/mgps/helper/MGWifiFightServerManger;

    .line 675
    .line 676
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGWifiFightServerManger;->shutDownServer()V

    .line 677
    .line 678
    .line 679
    :try_start_3
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 680
    .line 681
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    if-eqz v0, :cond_7

    .line 686
    .line 687
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 688
    .line 689
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 694
    .line 695
    .line 696
    move-result v0

    .line 697
    if-eqz v0, :cond_7

    .line 698
    .line 699
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 700
    .line 701
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 706
    .line 707
    .line 708
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 709
    .line 710
    new-instance v6, Lcom/join/mgps/dialog/t0;

    .line 711
    .line 712
    iget-object v13, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 713
    .line 714
    invoke-direct {v6, v13, v10}, Lcom/join/mgps/dialog/t0;-><init>(Landroid/content/Context;I)V

    .line 715
    .line 716
    .line 717
    invoke-static {v0, v6}, Lcom/join/mgps/activity/ApFightActivity;->access$802(Lcom/join/mgps/activity/ApFightActivity;Lcom/join/mgps/dialog/t0;)Lcom/join/mgps/dialog/t0;

    .line 718
    .line 719
    .line 720
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 721
    .line 722
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 727
    .line 728
    .line 729
    goto :goto_3

    .line 730
    :catch_3
    move-exception v0

    .line 731
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 732
    .line 733
    .line 734
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 735
    .line 736
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBrandName:Landroid/widget/TextView;

    .line 737
    .line 738
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    .line 740
    .line 741
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 742
    .line 743
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBrandName:Landroid/widget/TextView;

    .line 744
    .line 745
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    .line 747
    .line 748
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 749
    .line 750
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$700(Lcom/join/mgps/activity/ApFightActivity;)V

    .line 751
    .line 752
    .line 753
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 754
    .line 755
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn:Landroid/widget/Button;

    .line 756
    .line 757
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 758
    .line 759
    .line 760
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 761
    .line 762
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 763
    .line 764
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 765
    .line 766
    .line 767
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 768
    .line 769
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 770
    .line 771
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 772
    .line 773
    .line 774
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 775
    .line 776
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 777
    .line 778
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 779
    .line 780
    .line 781
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 782
    .line 783
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    .line 784
    .line 785
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 786
    .line 787
    .line 788
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 789
    .line 790
    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->closeBeginAnim()V

    .line 791
    .line 792
    .line 793
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 794
    .line 795
    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->hideFrame()V

    .line 796
    .line 797
    .line 798
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 799
    .line 800
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->hint:Landroid/widget/TextView;

    .line 801
    .line 802
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    .line 804
    .line 805
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 806
    .line 807
    iget-object v2, v0, Lcom/join/mgps/activity/ApFightActivity;->fightClientIcon:Landroid/widget/ImageView;

    .line 808
    .line 809
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 818
    .line 819
    .line 820
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 821
    .line 822
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->fightStart:Landroid/widget/ImageView;

    .line 823
    .line 824
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 825
    .line 826
    .line 827
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 828
    .line 829
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    .line 830
    .line 831
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 832
    .line 833
    .line 834
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 835
    .line 836
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    invoke-virtual {v0, v3}, Lcom/join/mgps/dialog/t0;->j(Ljava/lang/String;)V

    .line 841
    .line 842
    .line 843
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 844
    .line 845
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 846
    .line 847
    .line 848
    move-result-object v0

    .line 849
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/t0;->g(I)V

    .line 850
    .line 851
    .line 852
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 853
    .line 854
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 855
    .line 856
    .line 857
    move-result-object v0

    .line 858
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/t0;->c(I)V

    .line 859
    .line 860
    .line 861
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 862
    .line 863
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 864
    .line 865
    .line 866
    move-result-object v0

    .line 867
    invoke-virtual {v0, v12}, Lcom/join/mgps/dialog/t0;->a(I)V

    .line 868
    .line 869
    .line 870
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 871
    .line 872
    iget-object v1, v0, Lcom/join/mgps/activity/ApFightActivity;->fightServerIcon:Landroid/widget/ImageView;

    .line 873
    .line 874
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 879
    .line 880
    .line 881
    move-result-object v0

    .line 882
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 883
    .line 884
    .line 885
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 886
    .line 887
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->num:Landroid/widget/TextView;

    .line 888
    .line 889
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 890
    .line 891
    .line 892
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 893
    .line 894
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->lcon:Landroid/widget/ImageView;

    .line 895
    .line 896
    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 897
    .line 898
    .line 899
    :goto_4
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$100(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    sput v0, Lcom/join/mgps/activity/ApFightActivity;->step:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "\u6b63\u5728\u8fdb\u5165\u623f\u95f4"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, ",\u8bf7\u7a0d\u5019..."

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-static {v0, v1, p1}, Lcom/join/mgps/activity/ApFightActivity;->access$1300(Lcom/join/mgps/activity/ApFightActivity;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$100(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->lcon:Landroid/widget/ImageView;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$000(Lcom/join/mgps/activity/ApFightActivity;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/join/mgps/activity/ApFightActivity;->access$1400(Lcom/join/mgps/activity/ApFightActivity;I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 37
    .line 38
    const/4 v1, 0x3

    .line 39
    invoke-static {v0, v1}, Lcom/join/mgps/activity/ApFightActivity;->access$1400(Lcom/join/mgps/activity/ApFightActivity;I)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rooms"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$100(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    sput v0, Lcom/join/mgps/activity/ApFightActivity;->step:I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$500(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$500(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$500(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/a;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$600(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/v0;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$600(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/v0;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 67
    .line 68
    new-instance v1, Lcom/join/mgps/dialog/v0;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 71
    .line 72
    const v3, 0x7f13017f

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/dialog/v0;-><init>(Landroid/content/Context;I)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1}, Lcom/join/mgps/activity/ApFightActivity;->access$602(Lcom/join/mgps/activity/ApFightActivity;Lcom/join/mgps/dialog/v0;)Lcom/join/mgps/dialog/v0;

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$600(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/v0;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$600(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/v0;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/v0;->a(Ljava/util/List;)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 100
    .line 101
    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$600(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/v0;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    new-instance v0, Lcom/join/mgps/activity/ApFightActivity$e$b;

    .line 106
    .line 107
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ApFightActivity$e$b;-><init>(Lcom/join/mgps/activity/ApFightActivity$e;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$100(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$000(Lcom/join/mgps/activity/ApFightActivity;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->startGameClient()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->startGameClientWifi()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->disConnectWifiFightClient()V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serverBrand"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->hideFrame()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$100(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    iput-boolean v1, v0, Lcom/join/mgps/activity/ApFightActivity;->modeSwitchEnable:Z

    .line 44
    .line 45
    iput-boolean v1, v0, Lcom/join/mgps/activity/ApFightActivity;->apBtnEnable:Z

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->getSSID()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v2, "ssid"

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/WifiUtils;->getApSSID(Landroid/content/Context;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    :cond_1
    const-string v2, "\""

    .line 88
    .line 89
    const-string v3, ""

    .line 90
    .line 91
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v2, "_"

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    const/4 v4, 0x1

    .line 102
    if-eqz v3, :cond_2

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    add-int/2addr v2, v4

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 114
    .line 115
    invoke-static {v2}, Lcom/join/mgps/activity/ApFightActivity;->access$900(Lcom/join/mgps/activity/ApFightActivity;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    const v3, 0x7f0800af

    .line 120
    .line 121
    .line 122
    const v5, 0x7f08059b

    .line 123
    .line 124
    .line 125
    const/16 v6, 0x8

    .line 126
    .line 127
    if-eqz v2, :cond_5

    .line 128
    .line 129
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 130
    .line 131
    iget-object v1, v1, Lcom/join/mgps/activity/ApFightActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->apName()Lorg/androidannotations/api/sharedpreferences/i;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 138
    .line 139
    invoke-static {v2}, Lcom/join/mgps/activity/ApFightActivity;->access$1000(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/Util/WifiUtils;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v2}, Lcom/join/mgps/Util/WifiUtils;->getNetworkId()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 155
    .line 156
    invoke-static {v1}, Lcom/join/mgps/activity/ApFightActivity;->access$000(Lcom/join/mgps/activity/ApFightActivity;)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-nez v1, :cond_3

    .line 161
    .line 162
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 163
    .line 164
    iget-object v1, v1, Lcom/join/mgps/activity/ApFightActivity;->num:Landroid/widget/TextView;

    .line 165
    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v7, "\u623f\u95f4\u53f7"

    .line 172
    .line 173
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 187
    .line 188
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    .line 189
    .line 190
    const-string v1, "\u7b49\u5f85\u4e3b\u673a\u5f00\u59cb\u6e38\u620f..."

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 196
    .line 197
    invoke-static {v0, v4}, Lcom/join/mgps/activity/ApFightActivity;->access$1102(Lcom/join/mgps/activity/ApFightActivity;Z)Z

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 201
    .line 202
    iget-object v2, v0, Lcom/join/mgps/activity/ApFightActivity;->fightClientIcon:Landroid/widget/ImageView;

    .line 203
    .line 204
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    .line 214
    .line 215
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 216
    .line 217
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->hint:Landroid/widget/TextView;

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 223
    .line 224
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    .line 225
    .line 226
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 230
    .line 231
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn:Landroid/widget/Button;

    .line 232
    .line 233
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 234
    .line 235
    .line 236
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 237
    .line 238
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 239
    .line 240
    const v1, 0x7f0800b5

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 244
    .line 245
    .line 246
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 247
    .line 248
    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->showP2Frame()V

    .line 249
    .line 250
    .line 251
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    if-nez p1, :cond_4

    .line 258
    .line 259
    goto :goto_0

    .line 260
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 261
    .line 262
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->serverBrandName:Landroid/widget/TextView;

    .line 263
    .line 264
    const-string v0, "\u4e3b\u673a"

    .line 265
    .line 266
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    .line 268
    .line 269
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 270
    .line 271
    iget-object v0, p1, Lcom/join/mgps/activity/ApFightActivity;->fightServerIcon:Landroid/widget/ImageView;

    .line 272
    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    const v1, 0x7f08059c

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    .line 286
    .line 287
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 288
    .line 289
    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$1200(Lcom/join/mgps/activity/ApFightActivity;)V

    .line 290
    .line 291
    .line 292
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 293
    .line 294
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 299
    .line 300
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$200(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 305
    .line 306
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 315
    .line 316
    iget v2, v2, Lcom/join/mgps/activity/ApFightActivity;->statType:I

    .line 317
    .line 318
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    iget-object v4, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 323
    .line 324
    invoke-static {v4}, Lcom/join/mgps/activity/ApFightActivity;->access$200(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    iget-object v5, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 329
    .line 330
    invoke-virtual {v3, v4, v5}, Lq5/f;->N(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/papa/sim/statistic/t;->w1(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 335
    .line 336
    .line 337
    goto :goto_1

    .line 338
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 339
    .line 340
    iget-object v0, p1, Lcom/join/mgps/activity/ApFightActivity;->fightClientIcon:Landroid/widget/ImageView;

    .line 341
    .line 342
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 351
    .line 352
    .line 353
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 354
    .line 355
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->fightStart:Landroid/widget/ImageView;

    .line 356
    .line 357
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    .line 359
    .line 360
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 361
    .line 362
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->zxing_lay:Landroid/widget/FrameLayout;

    .line 363
    .line 364
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 365
    .line 366
    .line 367
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 368
    .line 369
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->zxing_tip_lay:Landroid/widget/LinearLayout;

    .line 370
    .line 371
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 372
    .line 373
    .line 374
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 375
    .line 376
    invoke-virtual {p1}, Lcom/join/mgps/activity/ApFightActivity;->openBeginAnim()V

    .line 377
    .line 378
    .line 379
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 380
    .line 381
    invoke-virtual {p1}, Lcom/join/mgps/activity/ApFightActivity;->showP1Frame()V

    .line 382
    .line 383
    .line 384
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 385
    .line 386
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->hint:Landroid/widget/TextView;

    .line 387
    .line 388
    const-string v0, "\u5c0f\u4f19\u4f34\u5df2\u5230\u4f4d\uff0c\u5feb\u70b9\u5f00\u59cb\u5427\uff01"

    .line 389
    .line 390
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    .line 392
    .line 393
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 394
    .line 395
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 396
    .line 397
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 398
    .line 399
    .line 400
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 401
    .line 402
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    .line 403
    .line 404
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 405
    .line 406
    .line 407
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 408
    .line 409
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn:Landroid/widget/Button;

    .line 410
    .line 411
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 412
    .line 413
    .line 414
    :goto_1
    return-void
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$100(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "method onSearchTimeout,step="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    sget v1, Lcom/join/mgps/activity/ApFightActivity;->step:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 30
    .line 31
    iput-boolean v1, v0, Lcom/join/mgps/activity/ApFightActivity;->modeSwitchEnable:Z

    .line 32
    .line 33
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->lcon:Landroid/widget/ImageView;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 66
    .line 67
    .line 68
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v2, "\u7b49\u5f85\u4e3b\u673a\u5f00\u59cb\u6e38\u620f"

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_1

    .line 87
    .line 88
    sget v0, Lcom/join/mgps/activity/ApFightActivity;->step:I

    .line 89
    .line 90
    if-ne v0, v1, :cond_1

    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 93
    .line 94
    const/4 v1, 0x2

    .line 95
    invoke-static {v0, v1}, Lcom/join/mgps/activity/ApFightActivity;->access$1400(Lcom/join/mgps/activity/ApFightActivity;I)V

    .line 96
    .line 97
    .line 98
    :cond_1
    return-void
.end method

.method public i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$100(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->mismatchDialog:Lcom/join/mgps/dialog/u2;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 28
    .line 29
    iput-boolean v1, v0, Lcom/join/mgps/activity/ApFightActivity;->modeSwitchEnable:Z

    .line 30
    .line 31
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->fightStart:Landroid/widget/ImageView;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/16 v2, 0x8

    .line 38
    .line 39
    if-ne v0, v2, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 42
    .line 43
    invoke-static {v0, v1}, Lcom/join/mgps/activity/ApFightActivity;->access$1400(Lcom/join/mgps/activity/ApFightActivity;I)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$100(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->mismatchDialog:Lcom/join/mgps/dialog/u2;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 28
    .line 29
    iput-boolean v1, v0, Lcom/join/mgps/activity/ApFightActivity;->modeSwitchEnable:Z

    .line 30
    .line 31
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->lcon:Landroid/widget/ImageView;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$1000(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/Util/WifiUtils;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 44
    .line 45
    iget-object v2, v2, Lcom/join/mgps/activity/ApFightActivity;->apName:Ljava/lang/String;

    .line 46
    .line 47
    const-string v3, "12345678"

    .line 48
    .line 49
    invoke-virtual {v0, v2, v3, v1}, Lcom/join/mgps/Util/WifiUtils;->setHotSpot(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameIdName"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$1200(Lcom/join/mgps/activity/ApFightActivity;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "_"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    array-length v1, v1

    .line 13
    const v2, 0x7f13017f

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-ne v1, v3, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 20
    .line 21
    new-instance v3, Lcom/join/mgps/dialog/u2;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 24
    .line 25
    iget-object v5, v4, Lcom/join/mgps/activity/ApFightActivity;->mServerIp:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v0, 0x0

    .line 32
    aget-object p1, p1, v0

    .line 33
    .line 34
    invoke-direct {v3, v4, v2, v5, p1}, Lcom/join/mgps/dialog/u2;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iput-object v3, v1, Lcom/join/mgps/activity/ApFightActivity;->mismatchDialog:Lcom/join/mgps/dialog/u2;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    array-length v1, v1

    .line 45
    const/4 v4, 0x2

    .line 46
    if-ne v1, v4, :cond_1

    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 49
    .line 50
    new-instance v4, Lcom/join/mgps/dialog/u2;

    .line 51
    .line 52
    iget-object v5, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 53
    .line 54
    iget-object v6, v5, Lcom/join/mgps/activity/ApFightActivity;->mServerIp:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    aget-object p1, p1, v3

    .line 61
    .line 62
    invoke-direct {v4, v5, v2, v6, p1}, Lcom/join/mgps/dialog/u2;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iput-object v4, v1, Lcom/join/mgps/activity/ApFightActivity;->mismatchDialog:Lcom/join/mgps/dialog/u2;

    .line 66
    .line 67
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->mismatchDialog:Lcom/join/mgps/dialog/u2;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$100(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "tbl>>>method onSuccess:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/join/mgps/activity/ApFightActivity;->access$200(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 32
    .line 33
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->Z(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    iput-boolean v1, v0, Lcom/join/mgps/activity/ApFightActivity;->modeSwitchEnable:Z

    .line 48
    .line 49
    iput-boolean v1, v0, Lcom/join/mgps/activity/ApFightActivity;->apBtnEnable:Z

    .line 50
    .line 51
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$300(Lcom/join/mgps/activity/ApFightActivity;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 64
    .line 65
    iput-object p1, v0, Lcom/join/mgps/activity/ApFightActivity;->apName:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$000(Lcom/join/mgps/activity/ApFightActivity;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->num:Landroid/widget/TextView;

    .line 76
    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v3, "\u623f\u95f4\u53f7 "

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v3, "_"

    .line 88
    .line 89
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    add-int/lit8 v3, v3, 0x1

    .line 94
    .line 95
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 110
    .line 111
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 117
    .line 118
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->fightStart:Landroid/widget/ImageView;

    .line 119
    .line 120
    const/16 v2, 0x8

    .line 121
    .line 122
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->closeBeginAnim()V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->hideFrame()V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 136
    .line 137
    invoke-static {v0}, Lcom/join/mgps/activity/ApFightActivity;->access$000(Lcom/join/mgps/activity/ApFightActivity;)I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    const v3, 0x7f0800b5

    .line 142
    .line 143
    .line 144
    const-string v4, "\u7b49\u5f85\u5c0f\u4f19\u4f34\u52a0\u5165..."

    .line 145
    .line 146
    if-nez v0, :cond_2

    .line 147
    .line 148
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 149
    .line 150
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 151
    .line 152
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/join/mgps/activity/ApFightActivity;->showP1Frame()V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 161
    .line 162
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->clientBtn:Landroid/widget/Button;

    .line 163
    .line 164
    const v5, 0x7f0800ae

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 171
    .line 172
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->zxingBtn:Landroid/widget/Button;

    .line 173
    .line 174
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 178
    .line 179
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 185
    .line 186
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->hint:Landroid/widget/TextView;

    .line 187
    .line 188
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 192
    .line 193
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    .line 194
    .line 195
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 199
    .line 200
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->zxing_tip_lay:Landroid/widget/LinearLayout;

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 206
    .line 207
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->zxingTip1:Landroid/widget/TextView;

    .line 208
    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    const-string v4, "\u4f60\u5df2\u521b\u5efa\u70ed\u70b9\uff1a"

    .line 215
    .line 216
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 230
    .line 231
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->zxingTip2:Landroid/widget/TextView;

    .line 232
    .line 233
    const-string v2, "IP: 192.168.43.1"

    .line 234
    .line 235
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    .line 237
    .line 238
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 239
    .line 240
    invoke-static {v0, p1}, Lcom/join/mgps/activity/ApFightActivity;->access$400(Lcom/join/mgps/activity/ApFightActivity;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 244
    .line 245
    iget-object v0, v0, Lcom/join/mgps/activity/ApFightActivity;->ssidTxt:Landroid/widget/TextView;

    .line 246
    .line 247
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    .line 249
    .line 250
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 251
    .line 252
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->ipTxt:Landroid/widget/TextView;

    .line 253
    .line 254
    const-string v0, "192.168.43.1"

    .line 255
    .line 256
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    .line 258
    .line 259
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 260
    .line 261
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->tipTxt1:Landroid/widget/TextView;

    .line 262
    .line 263
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    .line 265
    .line 266
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 267
    .line 268
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->tipTxt2:Landroid/widget/TextView;

    .line 269
    .line 270
    const-string v0, "\u2461 \u8ba9\u5c0f\u4f19\u4f34\u70b9\u51fb\u201c\u81ea\u52a8\u52a0\u5165\u201d"

    .line 271
    .line 272
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    .line 274
    .line 275
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 276
    .line 277
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->ip_lay:Landroid/widget/LinearLayout;

    .line 278
    .line 279
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    .line 281
    .line 282
    goto/16 :goto_0

    .line 283
    .line 284
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 285
    .line 286
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->waitHint:Landroid/widget/TextView;

    .line 287
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    const-string v5, "\u5df2\u8fde\u63a5"

    .line 294
    .line 295
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    iget-object v5, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 299
    .line 300
    invoke-static {v5}, Lcom/join/android/app/common/utils/m;->g(Landroid/content/Context;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    const-string v5, ",IP\u4e3a"

    .line 308
    .line 309
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    iget-object v5, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 313
    .line 314
    invoke-static {v5}, Lcom/join/android/app/common/utils/m;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    .line 327
    .line 328
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 329
    .line 330
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->hint:Landroid/widget/TextView;

    .line 331
    .line 332
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    .line 334
    .line 335
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 336
    .line 337
    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$500(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/a;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    if-eqz p1, :cond_3

    .line 342
    .line 343
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 344
    .line 345
    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$500(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/a;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    if-eqz p1, :cond_3

    .line 354
    .line 355
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 356
    .line 357
    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$500(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/a;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 362
    .line 363
    .line 364
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 365
    .line 366
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->zxing_tip_lay:Landroid/widget/LinearLayout;

    .line 367
    .line 368
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 369
    .line 370
    .line 371
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 372
    .line 373
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->zxingTip1:Landroid/widget/TextView;

    .line 374
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .line 379
    .line 380
    const-string v1, "\u4f60\u5df2\u8fdeWIFI\uff1a"

    .line 381
    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 386
    .line 387
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->g(Landroid/content/Context;)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    .line 400
    .line 401
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 402
    .line 403
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->zxingTip2:Landroid/widget/TextView;

    .line 404
    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    .line 406
    .line 407
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    .line 409
    .line 410
    const-string v1, "IP: "

    .line 411
    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 416
    .line 417
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    .line 430
    .line 431
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 432
    .line 433
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-static {p1, v0}, Lcom/join/mgps/activity/ApFightActivity;->access$400(Lcom/join/mgps/activity/ApFightActivity;Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 441
    .line 442
    iget-object v0, p1, Lcom/join/mgps/activity/ApFightActivity;->ssidTxt:Landroid/widget/TextView;

    .line 443
    .line 444
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->g(Landroid/content/Context;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object p1

    .line 448
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    .line 450
    .line 451
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 452
    .line 453
    iget-object v0, p1, Lcom/join/mgps/activity/ApFightActivity;->ipTxt:Landroid/widget/TextView;

    .line 454
    .line 455
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object p1

    .line 459
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    .line 461
    .line 462
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 463
    .line 464
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->tipTxt2:Landroid/widget/TextView;

    .line 465
    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .line 470
    .line 471
    const-string v1, "\u2461 \u8ba9\u5c0f\u4f19\u4f34\u8f93\u5165IP: "

    .line 472
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    iget-object v1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 477
    .line 478
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    .line 491
    .line 492
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 493
    .line 494
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->tipTxt1:Landroid/widget/TextView;

    .line 495
    .line 496
    const-string v0, "\u4f60\u5df2\u8fde\u63a5WIFI\uff1a"

    .line 497
    .line 498
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    .line 500
    .line 501
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 502
    .line 503
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->ip_lay:Landroid/widget/LinearLayout;

    .line 504
    .line 505
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 506
    .line 507
    .line 508
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 509
    .line 510
    iget-object v0, p1, Lcom/join/mgps/activity/ApFightActivity;->fightServerIcon:Landroid/widget/ImageView;

    .line 511
    .line 512
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 513
    .line 514
    .line 515
    move-result-object p1

    .line 516
    const v1, 0x7f08059c

    .line 517
    .line 518
    .line 519
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 520
    .line 521
    .line 522
    move-result-object p1

    .line 523
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 524
    .line 525
    .line 526
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 527
    .line 528
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->serverBtn:Landroid/widget/Button;

    .line 529
    .line 530
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 531
    .line 532
    .line 533
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 534
    .line 535
    invoke-virtual {p1}, Lcom/join/mgps/activity/ApFightActivity;->showP1Frame()V

    .line 536
    .line 537
    .line 538
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 539
    .line 540
    invoke-virtual {p1}, Lcom/join/mgps/activity/ApFightActivity;->dismissLoading()V

    .line 541
    .line 542
    .line 543
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 544
    .line 545
    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$600(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/v0;

    .line 546
    .line 547
    .line 548
    move-result-object p1

    .line 549
    if-eqz p1, :cond_4

    .line 550
    .line 551
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 552
    .line 553
    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$600(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/v0;

    .line 554
    .line 555
    .line 556
    move-result-object p1

    .line 557
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 558
    .line 559
    .line 560
    move-result p1

    .line 561
    if-eqz p1, :cond_4

    .line 562
    .line 563
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 564
    .line 565
    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$600(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/v0;

    .line 566
    .line 567
    .line 568
    move-result-object p1

    .line 569
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 570
    .line 571
    .line 572
    :cond_4
    return-void
.end method

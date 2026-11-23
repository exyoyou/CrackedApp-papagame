.class Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;->c(Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;

.field final synthetic c:Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$a;->c:Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$a;->b:Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$a;->b:Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isSo()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$a;->b:Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMod()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v2, Lcom/papa/sim/statistic/Event;->onclickSinGameStart:Lcom/papa/sim/statistic/Event;

    .line 31
    .line 32
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    .line 33
    .line 34
    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v4, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$a;->b:Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;

    .line 38
    .line 39
    iget-object v4, v4, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3, v1}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v0, v2, v3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sget-object v2, Lcom/papa/sim/statistic/Event;->onclickSinGameStart:Lcom/papa/sim/statistic/Event;

    .line 66
    .line 67
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    .line 68
    .line 69
    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object v4, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$a;->b:Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;

    .line 73
    .line 74
    iget-object v4, v4, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 75
    .line 76
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3, v1}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v0, v2, v3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sget-object v2, Lcom/papa/sim/statistic/Event;->onclickSinGameStart:Lcom/papa/sim/statistic/Event;

    .line 100
    .line 101
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    .line 102
    .line 103
    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 104
    .line 105
    .line 106
    iget-object v4, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$a;->b:Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;

    .line 107
    .line 108
    iget-object v4, v4, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 109
    .line 110
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v3, v1}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0, v2, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$a;->b:Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;

    .line 127
    .line 128
    iget-object v0, v0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMod()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_2

    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    sget-object v2, Lcom/papa/sim/statistic/Event;->onclickSoGameStart:Lcom/papa/sim/statistic/Event;

    .line 145
    .line 146
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    .line 147
    .line 148
    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 149
    .line 150
    .line 151
    iget-object v4, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$a;->b:Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;

    .line 152
    .line 153
    iget-object v4, v4, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 154
    .line 155
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v3, v1}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v0, v2, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    sget-object v1, Lcom/papa/sim/statistic/Event;->onclickSoGameStart:Lcom/papa/sim/statistic/Event;

    .line 180
    .line 181
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 182
    .line 183
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 184
    .line 185
    .line 186
    iget-object v3, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$a;->b:Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;

    .line 187
    .line 188
    iget-object v3, v3, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 189
    .line 190
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 199
    .line 200
    .line 201
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$a;->b:Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;

    .line 206
    .line 207
    iget-object v0, v0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 208
    .line 209
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 210
    .line 211
    .line 212
    iget-object p1, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$a;->c:Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;

    .line 213
    .line 214
    iget-object p1, p1, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;->c:Lcom/join/mgps/activity/AppDownFinishDialogActivity;

    .line 215
    .line 216
    invoke-virtual {p1}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 217
    .line 218
    .line 219
    return-void
.end method

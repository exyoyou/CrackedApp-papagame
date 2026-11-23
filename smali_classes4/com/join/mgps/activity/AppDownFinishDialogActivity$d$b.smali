.class Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$b;
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
    iput-object p1, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$b;->c:Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$b;->b:Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;

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
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$b;->b:Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;

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
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$b;->b:Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;

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
    move-result-object p1

    .line 26
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    sget-object v0, Lcom/papa/sim/statistic/Event;->exitSoGameStart:Lcom/papa/sim/statistic/Event;

    .line 31
    .line 32
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 33
    .line 34
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$b;->b:Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;

    .line 38
    .line 39
    iget-object v3, v3, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2, v1}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

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
    move-result-object p1

    .line 61
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    sget-object v0, Lcom/papa/sim/statistic/Event;->exitSoGameStart:Lcom/papa/sim/statistic/Event;

    .line 66
    .line 67
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 68
    .line 69
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$b;->b:Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;

    .line 73
    .line 74
    iget-object v2, v2, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$b;->b:Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMod()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    sget-object v0, Lcom/papa/sim/statistic/Event;->exitSinGameStart:Lcom/papa/sim/statistic/Event;

    .line 107
    .line 108
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 109
    .line 110
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 111
    .line 112
    .line 113
    iget-object v3, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$b;->b:Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;

    .line 114
    .line 115
    iget-object v3, v3, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 116
    .line 117
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v2, v1}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    sget-object v0, Lcom/papa/sim/statistic/Event;->exitSinGameStart:Lcom/papa/sim/statistic/Event;

    .line 142
    .line 143
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 144
    .line 145
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 146
    .line 147
    .line 148
    iget-object v3, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$b;->b:Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;

    .line 149
    .line 150
    iget-object v3, v3, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 151
    .line 152
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v2, v1}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 165
    .line 166
    .line 167
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$b;->c:Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;

    .line 168
    .line 169
    iget-object p1, p1, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;->c:Lcom/join/mgps/activity/AppDownFinishDialogActivity;

    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 172
    .line 173
    .line 174
    return-void
.end method

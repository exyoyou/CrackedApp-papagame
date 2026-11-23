.class Lcom/join/mgps/mod/activity/ModLoadingActivity$ModReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/mod/activity/ModLoadingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/mod/activity/ModLoadingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$ModReceiver;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "com.join.android.app.mgsim.wufun.soCopyStart"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "soName"

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$ModReceiver;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 27
    .line 28
    iget-object p2, p2, Lcom/join/mgps/mod/activity/ModLoadingActivity;->A:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :cond_1
    const-string v0, "com.join.android.app.mgsim.wufun.soCopyFinish"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v2, 0x1

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$ModReceiver;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 55
    .line 56
    iput-boolean v2, p1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->v:Z

    .line 57
    .line 58
    iget-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$ModReceiver;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->checkReady()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$ModReceiver;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 65
    .line 66
    iget-object p2, p2, Lcom/join/mgps/mod/activity/ModLoadingActivity;->B:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$ModReceiver;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 72
    .line 73
    iget-boolean p2, p1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->v:Z

    .line 74
    .line 75
    if-eqz p2, :cond_6

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->checkReady()V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    const-string p2, "com.join.android.app.mgsim.wufun.loadMod"

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_4

    .line 88
    .line 89
    iget-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$ModReceiver;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    const-string p2, "com.join.android.app.mgsim.wufun.soCopyFail"

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_6

    .line 102
    .line 103
    sget p1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->W:I

    .line 104
    .line 105
    add-int/2addr p1, v2

    .line 106
    sput p1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->W:I

    .line 107
    .line 108
    iget-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$ModReceiver;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 109
    .line 110
    iget-object p1, p1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->j:Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {p1}, Lcom/join/mgps/Util/o0;->m(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    sget-object p2, Lcom/join/mgps/Util/z;->g:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string p2, "mod/"

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object p2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$ModReceiver;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 131
    .line 132
    invoke-static {p2}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->t(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string p2, "/oat"

    .line 144
    .line 145
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {p1}, Lcom/join/mgps/Util/o0;->m(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$ModReceiver;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 156
    .line 157
    invoke-static {p1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->u(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_5

    .line 166
    .line 167
    iget-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$ModReceiver;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 168
    .line 169
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-nez p1, :cond_5

    .line 174
    .line 175
    sget p1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->W:I

    .line 176
    .line 177
    const/4 p2, 0x2

    .line 178
    if-ge p1, p2, :cond_5

    .line 179
    .line 180
    iget-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$ModReceiver;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 181
    .line 182
    iget-object p2, p1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->g:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {p1, p2}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->checkModAndStart(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$ModReceiver;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->startCopyFile()V

    .line 191
    .line 192
    .line 193
    :cond_6
    :goto_0
    return-void
.end method

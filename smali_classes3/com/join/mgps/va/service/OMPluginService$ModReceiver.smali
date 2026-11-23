.class Lcom/join/mgps/va/service/OMPluginService$ModReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/va/service/OMPluginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/va/service/OMPluginService;


# direct methods
.method constructor <init>(Lcom/join/mgps/va/service/OMPluginService;)V
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
    iput-object p1, p0, Lcom/join/mgps/va/service/OMPluginService$ModReceiver;->a:Lcom/join/mgps/va/service/OMPluginService;

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
    iget-object p2, p0, Lcom/join/mgps/va/service/OMPluginService$ModReceiver;->a:Lcom/join/mgps/va/service/OMPluginService;

    .line 27
    .line 28
    iget-object p2, p2, Lcom/join/mgps/va/service/OMPluginService;->n:Ljava/util/List;

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
    iget-object p1, p0, Lcom/join/mgps/va/service/OMPluginService$ModReceiver;->a:Lcom/join/mgps/va/service/OMPluginService;

    .line 55
    .line 56
    iput-boolean v2, p1, Lcom/join/mgps/va/service/OMPluginService;->m:Z

    .line 57
    .line 58
    iget-object p1, p0, Lcom/join/mgps/va/service/OMPluginService$ModReceiver;->a:Lcom/join/mgps/va/service/OMPluginService;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/join/mgps/va/service/OMPluginService;->p()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/va/service/OMPluginService$ModReceiver;->a:Lcom/join/mgps/va/service/OMPluginService;

    .line 65
    .line 66
    iget-object p2, p2, Lcom/join/mgps/va/service/OMPluginService;->o:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/join/mgps/va/service/OMPluginService$ModReceiver;->a:Lcom/join/mgps/va/service/OMPluginService;

    .line 72
    .line 73
    iget-boolean p2, p1, Lcom/join/mgps/va/service/OMPluginService;->m:Z

    .line 74
    .line 75
    if-eqz p2, :cond_5

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/join/mgps/va/service/OMPluginService;->p()V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    const-string p2, "com.join.android.app.mgsim.wufun.soCopyFail"

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    sget p1, Lcom/join/mgps/va/service/OMPluginService;->s:I

    .line 90
    .line 91
    add-int/2addr p1, v2

    .line 92
    sput p1, Lcom/join/mgps/va/service/OMPluginService;->s:I

    .line 93
    .line 94
    iget-object p1, p0, Lcom/join/mgps/va/service/OMPluginService$ModReceiver;->a:Lcom/join/mgps/va/service/OMPluginService;

    .line 95
    .line 96
    iget-object p1, p1, Lcom/join/mgps/va/service/OMPluginService;->d:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {p1}, Lcom/join/mgps/Util/o0;->m(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    sget-object p2, Lcom/join/mgps/Util/z;->g:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p2, "mod/"

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-object p2, p0, Lcom/join/mgps/va/service/OMPluginService$ModReceiver;->a:Lcom/join/mgps/va/service/OMPluginService;

    .line 117
    .line 118
    invoke-static {p2}, Lcom/join/mgps/va/service/OMPluginService;->f(Lcom/join/mgps/va/service/OMPluginService;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string p2, "/oat"

    .line 130
    .line 131
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {p1}, Lcom/join/mgps/Util/o0;->m(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/join/mgps/va/service/OMPluginService$ModReceiver;->a:Lcom/join/mgps/va/service/OMPluginService;

    .line 142
    .line 143
    invoke-static {p1}, Lcom/join/mgps/va/service/OMPluginService;->b(Lcom/join/mgps/va/service/OMPluginService;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-eqz p1, :cond_4

    .line 152
    .line 153
    iget-object p1, p0, Lcom/join/mgps/va/service/OMPluginService$ModReceiver;->a:Lcom/join/mgps/va/service/OMPluginService;

    .line 154
    .line 155
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-nez p1, :cond_4

    .line 160
    .line 161
    sget p1, Lcom/join/mgps/va/service/OMPluginService;->s:I

    .line 162
    .line 163
    const/4 p2, 0x2

    .line 164
    if-ge p1, p2, :cond_4

    .line 165
    .line 166
    iget-object p1, p0, Lcom/join/mgps/va/service/OMPluginService$ModReceiver;->a:Lcom/join/mgps/va/service/OMPluginService;

    .line 167
    .line 168
    iget-object p2, p1, Lcom/join/mgps/va/service/OMPluginService;->c:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {p1, p2}, Lcom/join/mgps/va/service/OMPluginService;->o(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/va/service/OMPluginService$ModReceiver;->a:Lcom/join/mgps/va/service/OMPluginService;

    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/join/mgps/va/service/OMPluginService;->x()V

    .line 177
    .line 178
    .line 179
    :cond_5
    :goto_0
    return-void
.end method

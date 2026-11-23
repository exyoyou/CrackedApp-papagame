.class Lcom/join/mgps/activity/QuarkPromptActivity$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/QuarkPromptActivity$c;->a(Lcom/tbruyelle/rxpermissions2/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/QuarkPromptActivity$c;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/QuarkPromptActivity$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/QuarkPromptActivity$c$a;->b:Lcom/join/mgps/activity/QuarkPromptActivity$c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity$c$a;->b:Lcom/join/mgps/activity/QuarkPromptActivity$c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/QuarkPromptActivity$c;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/join/mgps/activity/QuarkPromptActivity;->webDiskInfo:Lcom/join/mgps/dto/WebDiskInfo;

    .line 6
    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    iget-object v0, v0, Lcom/join/mgps/activity/QuarkPromptActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->quark_click_count()Lorg/androidannotations/api/sharedpreferences/i;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity$c$a;->b:Lcom/join/mgps/activity/QuarkPromptActivity$c;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/join/mgps/activity/QuarkPromptActivity$c;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/join/mgps/activity/QuarkPromptActivity;->cfg:Lcom/join/mgps/dto/WebDiskCfg;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/join/mgps/dto/WebDiskCfg;->getClick_count()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-ge v0, v1, :cond_0

    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity$c$a;->b:Lcom/join/mgps/activity/QuarkPromptActivity$c;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/join/mgps/activity/QuarkPromptActivity$c;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/join/mgps/activity/QuarkPromptActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->quark_click_count()Lorg/androidannotations/api/sharedpreferences/i;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity$c$a;->b:Lcom/join/mgps/activity/QuarkPromptActivity$c;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/join/mgps/activity/QuarkPromptActivity$c;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/join/mgps/activity/QuarkPromptActivity;->access$100(Lcom/join/mgps/activity/QuarkPromptActivity;)Lcom/join/mgps/dto/CollectionBeanSub;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity$c$a;->b:Lcom/join/mgps/activity/QuarkPromptActivity$c;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/join/mgps/activity/QuarkPromptActivity$c;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 71
    .line 72
    iget-boolean v0, v0, Lcom/join/mgps/activity/QuarkPromptActivity;->isEmu:Z

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity$c$a;->b:Lcom/join/mgps/activity/QuarkPromptActivity$c;

    .line 81
    .line 82
    iget-object v2, v0, Lcom/join/mgps/activity/QuarkPromptActivity$c;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 83
    .line 84
    invoke-static {}, Lcom/join/mgps/Util/d2;->p()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity$c$a;->b:Lcom/join/mgps/activity/QuarkPromptActivity$c;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/join/mgps/activity/QuarkPromptActivity$c;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/join/mgps/activity/QuarkPromptActivity;->webDiskInfo:Lcom/join/mgps/dto/WebDiskInfo;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/join/mgps/dto/WebDiskInfo;->getWb_url()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity$c$a;->b:Lcom/join/mgps/activity/QuarkPromptActivity$c;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/join/mgps/activity/QuarkPromptActivity$c;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 101
    .line 102
    invoke-static {v0}, Lcom/join/mgps/activity/QuarkPromptActivity;->access$100(Lcom/join/mgps/activity/QuarkPromptActivity;)Lcom/join/mgps/dto/CollectionBeanSub;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity$c$a;->b:Lcom/join/mgps/activity/QuarkPromptActivity$c;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/join/mgps/activity/QuarkPromptActivity$c;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/join/mgps/activity/QuarkPromptActivity;->access$100(Lcom/join/mgps/activity/QuarkPromptActivity;)Lcom/join/mgps/dto/CollectionBeanSub;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/Util/IntentUtil;->startQuarkBrowser(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity$c$a;->b:Lcom/join/mgps/activity/QuarkPromptActivity$c;

    .line 131
    .line 132
    iget-object v8, v0, Lcom/join/mgps/activity/QuarkPromptActivity$c;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 133
    .line 134
    invoke-static {}, Lcom/join/mgps/Util/d2;->s()Z

    .line 135
    .line 136
    .line 137
    move-result v9

    .line 138
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity$c$a;->b:Lcom/join/mgps/activity/QuarkPromptActivity$c;

    .line 139
    .line 140
    iget-object v0, v0, Lcom/join/mgps/activity/QuarkPromptActivity$c;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 141
    .line 142
    iget-object v0, v0, Lcom/join/mgps/activity/QuarkPromptActivity;->webDiskInfo:Lcom/join/mgps/dto/WebDiskInfo;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/join/mgps/dto/WebDiskInfo;->getWb_url()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity$c$a;->b:Lcom/join/mgps/activity/QuarkPromptActivity$c;

    .line 149
    .line 150
    iget-object v0, v0, Lcom/join/mgps/activity/QuarkPromptActivity$c;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 151
    .line 152
    invoke-static {v0}, Lcom/join/mgps/activity/QuarkPromptActivity;->access$100(Lcom/join/mgps/activity/QuarkPromptActivity;)Lcom/join/mgps/dto/CollectionBeanSub;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v11

    .line 160
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity$c$a;->b:Lcom/join/mgps/activity/QuarkPromptActivity$c;

    .line 161
    .line 162
    iget-object v0, v0, Lcom/join/mgps/activity/QuarkPromptActivity$c;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 163
    .line 164
    invoke-static {v0}, Lcom/join/mgps/activity/QuarkPromptActivity;->access$100(Lcom/join/mgps/activity/QuarkPromptActivity;)Lcom/join/mgps/dto/CollectionBeanSub;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v12

    .line 172
    invoke-virtual/range {v7 .. v12}, Lcom/join/mgps/Util/IntentUtil;->startQuarkBrowser(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkPromptActivity$c$a;->b:Lcom/join/mgps/activity/QuarkPromptActivity$c;

    .line 176
    .line 177
    iget-object v0, v0, Lcom/join/mgps/activity/QuarkPromptActivity$c;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 178
    .line 179
    iget-object v0, v0, Lcom/join/mgps/activity/QuarkPromptActivity;->gameDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 180
    .line 181
    if-eqz v0, :cond_3

    .line 182
    .line 183
    new-instance v0, Lcom/join/mgps/dto/DownloadScanEvent;

    .line 184
    .line 185
    invoke-direct {v0}, Lcom/join/mgps/dto/DownloadScanEvent;-><init>()V

    .line 186
    .line 187
    .line 188
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity$c$a;->b:Lcom/join/mgps/activity/QuarkPromptActivity$c;

    .line 189
    .line 190
    iget-object v1, v1, Lcom/join/mgps/activity/QuarkPromptActivity$c;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 191
    .line 192
    iget-object v1, v1, Lcom/join/mgps/activity/QuarkPromptActivity;->gameDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 193
    .line 194
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadScanEvent;->setPkg(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity$c$a;->b:Lcom/join/mgps/activity/QuarkPromptActivity$c;

    .line 202
    .line 203
    iget-object v1, v1, Lcom/join/mgps/activity/QuarkPromptActivity$c;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 204
    .line 205
    iget-object v1, v1, Lcom/join/mgps/activity/QuarkPromptActivity;->gameDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadScanEvent;->setTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 208
    .line 209
    .line 210
    const/4 v1, 0x0

    .line 211
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadScanEvent;->setStatus(I)V

    .line 212
    .line 213
    .line 214
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkPromptActivity$c$a;->b:Lcom/join/mgps/activity/QuarkPromptActivity$c;

    .line 215
    .line 216
    iget-object v1, v1, Lcom/join/mgps/activity/QuarkPromptActivity$c;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 217
    .line 218
    invoke-static {v1}, Lcom/join/mgps/service/CommonService_;->P2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$n0;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    const-string v2, "downloadByQuark"

    .line 223
    .line 224
    invoke-virtual {v1, v2, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/io/Serializable;)Lorg/androidannotations/api/builder/e;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 229
    .line 230
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 231
    .line 232
    .line 233
    :cond_3
    return-void
.end method

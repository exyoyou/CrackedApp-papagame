.class Lcom/join/mgps/Util/UtilsMy$b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/UtilsMy;->r1(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:Lcom/join/mgps/db/tables/EMUApkTable;

.field final synthetic d:I

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkTable;ILandroid/content/Context;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$plug",
            "val$emuApkTable",
            "val$plugType",
            "val$context",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/UtilsMy$b0;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/Util/UtilsMy$b0;->c:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/Util/UtilsMy$b0;->d:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/Util/UtilsMy$b0;->e:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/Util/UtilsMy$b0;->f:Landroid/app/Dialog;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$b0;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$b0;->c:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getPackage_name()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPackageName(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$b0;->c:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getLogo()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPortraitURL(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$b0;->c:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getApk_name()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$b0;->c:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTipBeans(Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    iget v1, p0, Lcom/join/mgps/Util/UtilsMy$b0;->d:I

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, ""

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$b0;->c:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v2, "_"

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const/4 v2, 0x1

    .line 92
    aget-object v2, v0, v2

    .line 93
    .line 94
    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const/4 v2, 0x0

    .line 98
    aget-object v0, v0, v2

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    iget v2, p0, Lcom/join/mgps/Util/UtilsMy$b0;->d:I

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    iget v2, p0, Lcom/join/mgps/Util/UtilsMy$b0;->d:I

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_num(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    sget-object v0, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$b0;->c:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getSize()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$b0;->c:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer_info()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDescribe(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$b0;->c:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_type(I)V

    .line 182
    .line 183
    .line 184
    const-wide/16 v0, 0x0

    .line 185
    .line 186
    invoke-virtual {p1, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$b0;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 190
    .line 191
    if-eqz v0, :cond_1

    .line 192
    .line 193
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$b0;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    const/4 v1, 0x2

    .line 203
    if-ne v0, v1, :cond_1

    .line 204
    .line 205
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$b0;->c:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 206
    .line 207
    invoke-static {v0}, Lcom/join/android/app/common/utils/o;->i(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_1

    .line 212
    .line 213
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$b0;->c:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 214
    .line 215
    invoke-static {v0, p1}, Lcom/join/android/app/common/utils/o;->e(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 216
    .line 217
    .line 218
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$b0;->e:Landroid/content/Context;

    .line 219
    .line 220
    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 221
    .line 222
    .line 223
    iget-object p1, p0, Lcom/join/mgps/Util/UtilsMy$b0;->f:Landroid/app/Dialog;

    .line 224
    .line 225
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 226
    .line 227
    .line 228
    return-void
.end method

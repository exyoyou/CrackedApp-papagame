.class Lcom/join/android/app/common/utils/o$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/utils/o;->E(Lcom/join/mgps/db/tables/EMUApkArenaTable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/join/mgps/db/tables/EMUApkArenaTable;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/db/tables/EMUApkArenaTable;


# direct methods
.method constructor <init>(Lcom/join/mgps/db/tables/EMUApkArenaTable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$emuApkTable"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/utils/o$b;->a:Lcom/join/mgps/db/tables/EMUApkArenaTable;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/join/mgps/db/tables/EMUApkArenaTable;)Ljava/lang/Void;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emuApkTables"
        }
    .end annotation

    .line 1
    const-string p1, "/"

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/join/android/app/common/utils/o$b;->a:Lcom/join/mgps/db/tables/EMUApkArenaTable;

    .line 5
    .line 6
    if-eqz v1, :cond_5

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->getDown_type()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x2

    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lcom/join/android/app/common/utils/o$b;->a:Lcom/join/mgps/db/tables/EMUApkArenaTable;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->getApkPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, p0, Lcom/join/android/app/common/utils/o$b;->a:Lcom/join/mgps/db/tables/EMUApkArenaTable;

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->getRemark()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-class v4, Lcom/join/mgps/dto/ApkVersionRemarkBean;

    .line 34
    .line 35
    invoke-virtual {v2, v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/join/mgps/dto/ApkVersionRemarkBean;

    .line 40
    .line 41
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget-object v4, p0, Lcom/join/android/app/common/utils/o$b;->a:Lcom/join/mgps/db/tables/EMUApkArenaTable;

    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->getTag_id()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-virtual {v3, v4}, Lq5/f;->c0(I)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/join/mgps/dto/ApkVersionRemarkBean;->getCheck_files()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    if-eqz v4, :cond_4

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/join/mgps/dto/ApkVersionRemarkBean;->getCheck_files()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-lez v4, :cond_4

    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/join/mgps/dto/ApkVersionRemarkBean;->getCheck_files()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_4

    .line 90
    .line 91
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    check-cast v5, Lcom/join/mgps/dto/CheckFileBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    .line 97
    :try_start_1
    new-instance v6, Ljava/io/File;

    .line 98
    .line 99
    new-instance v7, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Lcom/join/mgps/dto/CheckFileBean;->getFile()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 125
    .line 126
    .line 127
    move-result v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    const-string v8, ""

    .line 129
    .line 130
    if-nez v7, :cond_1

    .line 131
    .line 132
    :try_start_2
    invoke-virtual {v5, v8}, Lcom/join/mgps/dto/CheckFileBean;->setPreCalcCheck(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_1
    invoke-static {v6}, Lcom/join/mgps/Util/i1;->c(Ljava/io/File;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/CheckFileBean;->setPreCalcCheck(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :goto_1
    if-nez v3, :cond_2

    .line 144
    .line 145
    invoke-virtual {v5, v8}, Lcom/join/mgps/dto/CheckFileBean;->setPreCalcBak(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_2
    new-instance v6, Ljava/io/File;

    .line 150
    .line 151
    new-instance v7, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5}, Lcom/join/mgps/dto/CheckFileBean;->getFile()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    if-nez v7, :cond_3

    .line 185
    .line 186
    invoke-virtual {v5, v8}, Lcom/join/mgps/dto/CheckFileBean;->setPreCalcBak(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_3
    invoke-static {v6}, Lcom/join/mgps/Util/i1;->c(Ljava/io/File;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/CheckFileBean;->setPreCalcBak(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :catch_0
    move-exception v5

    .line 199
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 200
    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_4
    iget-object p1, p0, Lcom/join/android/app/common/utils/o$b;->a:Lcom/join/mgps/db/tables/EMUApkArenaTable;

    .line 204
    .line 205
    invoke-static {v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {p1, v1}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setRemark(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iget-object v1, p0, Lcom/join/android/app/common/utils/o$b;->a:Lcom/join/mgps/db/tables/EMUApkArenaTable;

    .line 217
    .line 218
    invoke-virtual {p1, v1}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_5
    :goto_2
    return-object v0

    .line 223
    :catch_1
    move-exception p1

    .line 224
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    .line 226
    .line 227
    :goto_3
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "emuApkTables"
        }
    .end annotation

    .line 1
    check-cast p1, [Lcom/join/mgps/db/tables/EMUApkArenaTable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/utils/o$b;->a([Lcom/join/mgps/db/tables/EMUApkArenaTable;)Ljava/lang/Void;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

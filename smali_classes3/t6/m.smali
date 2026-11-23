.class public Lt6/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Lcom/join/mgps/db/tables/DownloadFileTable;)Lcom/php25/PDownload/DownloadFile;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadFileTable"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/php25/PDownload/DownloadFile;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/php25/PDownload/DownloadFile;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getId()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    int-to-long v1, v1

    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setId(Ljava/lang/Long;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getTag()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setTag(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getUrl()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setUrl(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getBasePath()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setBasePath(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setName(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getShowName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setShowName(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getAbsolutePath()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setAbsolutePath(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getGameZipPath()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setGameZipPath(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getTotalSize()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setTotalSize(Ljava/lang/Integer;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getDownloading()S

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    const/4 v2, 0x0

    .line 83
    const/4 v3, 0x1

    .line 84
    if-ne v1, v3, :cond_0

    .line 85
    .line 86
    const/4 v1, 0x1

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    const/4 v1, 0x0

    .line 89
    :goto_0
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setDownloading(Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getFinished()S

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-ne v1, v3, :cond_1

    .line 97
    .line 98
    const/4 v1, 0x1

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    const/4 v1, 0x0

    .line 101
    :goto_1
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setFinished(Z)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getCreateTime()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setCreateTime(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getPackageName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setPackageName(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getPercentage()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setPercent(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getIsAutoPause()S

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-ne v1, v3, :cond_2

    .line 130
    .line 131
    const/4 v1, 0x1

    .line 132
    goto :goto_2

    .line 133
    :cond_2
    const/4 v1, 0x0

    .line 134
    :goto_2
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setAutoPause(Z)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getFinishTime()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setFinishTime(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getCompleteSize()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    int-to-long v4, v1

    .line 149
    invoke-virtual {v0, v4, v5}, Lcom/php25/PDownload/DownloadFile;->setCompleteSize(J)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getDtype()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setDtype(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getFileType()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setFileType(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getPortraitURL()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setPortraitURL(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getCrc_link_type_val()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getVer()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setVer(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getVer_name()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setVer_name(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getGid()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setGid(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getStarNumber()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setStarNumber(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getRomType()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setRomType(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getIsOpen()S

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-ne v1, v3, :cond_3

    .line 220
    .line 221
    const/4 v1, 0x1

    .line 222
    goto :goto_3

    .line 223
    :cond_3
    const/4 v1, 0x0

    .line 224
    :goto_3
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setOpen(Z)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getDescribe()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setDiscribe(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getShowType()I

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setShowType(I)V

    .line 239
    .line 240
    .line 241
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getTips()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    new-array v3, v3, [Ljava/lang/Class;

    .line 254
    .line 255
    const-class v5, Lcom/join/mgps/dto/TipBean;

    .line 256
    .line 257
    aput-object v5, v3, v2

    .line 258
    .line 259
    const-class v2, Ljava/util/ArrayList;

    .line 260
    .line 261
    invoke-virtual {v4, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-virtual {v1, p0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    check-cast p0, Ljava/util/List;

    .line 270
    .line 271
    invoke-virtual {v0, p0}, Lcom/php25/PDownload/DownloadFile;->setTipBeans(Ljava/util/List;)V

    .line 272
    .line 273
    .line 274
    return-object v0
.end method

.method public static b(Lcom/php25/PDownload/DownloadFile;)Lcom/join/mgps/db/tables/DownloadFileTable;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadFile"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/db/tables/DownloadFileTable;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/db/tables/DownloadFileTable;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getTag()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setTag(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getUrl()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setUrl(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getBasePath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setBasePath(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setName(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getShowName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setShowName(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getAbsolutePath()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setAbsolutePath(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getGameZipPath()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setGameZipPath(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getTotalSize()Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setTotalSize(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->isDownloading()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    const/4 v2, 0x0

    .line 71
    const/4 v3, 0x1

    .line 72
    if-ne v1, v3, :cond_0

    .line 73
    .line 74
    const/4 v1, 0x1

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    const/4 v1, 0x0

    .line 77
    :goto_0
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setDownloading(S)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->isFinished()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-ne v1, v3, :cond_1

    .line 85
    .line 86
    const/4 v1, 0x1

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const/4 v1, 0x0

    .line 89
    :goto_1
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setFinished(S)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getCreateTime()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setCreateTime(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getPackageName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setPackageName(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getPercent()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setPercentage(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->isAutoPause()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-ne v1, v3, :cond_2

    .line 118
    .line 119
    const/4 v1, 0x1

    .line 120
    goto :goto_2

    .line 121
    :cond_2
    const/4 v1, 0x0

    .line 122
    :goto_2
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setIsAutoPause(S)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getFinishTime()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setFinishTime(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getCompleteSize()J

    .line 133
    .line 134
    .line 135
    move-result-wide v4

    .line 136
    long-to-int v1, v4

    .line 137
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setCompleteSize(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getDtype()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setDtype(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getFileType()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setFileType(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getPortraitURL()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setPortraitURL(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getCrc_link_type_val()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getVer()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setVer(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getVer_name()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setVer_name(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getGid()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setGid(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getStarNumber()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setStarNumber(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getRomType()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setRomType(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->isOpen()Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-ne v1, v3, :cond_3

    .line 208
    .line 209
    const/4 v2, 0x1

    .line 210
    :cond_3
    invoke-virtual {v0, v2}, Lcom/join/mgps/db/tables/DownloadFileTable;->setIsOpen(S)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getDiscribe()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setDescribe(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getShowType()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setShowType(I)V

    .line 225
    .line 226
    .line 227
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getTipBeans()Ljava/util/List;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-virtual {v1, p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    invoke-virtual {v0, p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->setTips(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    return-object v0
.end method

.method public static c(Lcom/php25/PDownload/DownloadFile;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadFile"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getUrl()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setName(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getShowName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getAbsolutePath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getGameZipPath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getTotalSize()Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    int-to-long v1, v1

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSize(J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getTotalSize()Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    int-to-long v1, v1

    .line 62
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->isFinished()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    const/4 v2, 0x1

    .line 74
    if-ne v1, v2, :cond_0

    .line 75
    .line 76
    const/4 v1, 0x5

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    const/4 v1, 0x3

    .line 79
    :goto_0
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getTotalSize()Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    int-to-long v3, v1

    .line 91
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getCreateTime()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const-string v3, ""

    .line 103
    .line 104
    if-eqz v1, :cond_3

    .line 105
    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_1
    const-string v4, "-"

    .line 114
    .line 115
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-eqz v4, :cond_2

    .line 120
    .line 121
    invoke-static {v1}, Lcom/join/mgps/Util/e0;->L(Ljava/lang/String;)Ljava/util/Date;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 126
    .line 127
    .line 128
    move-result-wide v4

    .line 129
    invoke-virtual {v0, v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStartTime(J)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_2
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 134
    .line 135
    .line 136
    move-result-wide v4

    .line 137
    invoke-virtual {v0, v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStartTime(J)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 142
    .line 143
    .line 144
    move-result-wide v4

    .line 145
    invoke-virtual {v0, v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStartTime(J)V

    .line 146
    .line 147
    .line 148
    :goto_2
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getPackageName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPackageName(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 156
    .line 157
    .line 158
    move-result-wide v4

    .line 159
    invoke-virtual {v0, v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFinishTime(J)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getCompleteSize()J

    .line 163
    .line 164
    .line 165
    move-result-wide v4

    .line 166
    long-to-int v1, v4

    .line 167
    int-to-long v4, v1

    .line 168
    invoke-virtual {v0, v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setLastCompleteSize(J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getFileType()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getPortraitURL()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPortraitURL(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getCrc_link_type_val()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    if-eqz v1, :cond_4

    .line 190
    .line 191
    const-string v4, "1024"

    .line 192
    .line 193
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-eqz v4, :cond_4

    .line 198
    .line 199
    const-string v1, "31"

    .line 200
    .line 201
    :cond_4
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getVer()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getVer_name()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getRomType()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->isOpen()Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOpen(Z)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getDiscribe()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDescribe(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getShowType()I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowType(I)V

    .line 244
    .line 245
    .line 246
    const-string v1, "1"

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 261
    .line 262
    .line 263
    const-wide/16 v1, 0x0

    .line 264
    .line 265
    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOpenTime(J)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getTipBeans()Ljava/util/List;

    .line 276
    .line 277
    .line 278
    move-result-object p0

    .line 279
    invoke-virtual {v1, p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    invoke-virtual {v0, p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTips(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "packageName"

    .line 8
    .line 9
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0, v0}, Lq5/b;->h(Ljava/util/Map;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-lez v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    :goto_0
    return-object p0
.end method

.method public static delete(Lcom/php25/PDownload/DownloadFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadFile"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lt6/j;->n()Lt6/j;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getId()Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Lq5/b;->b(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static insert(Lcom/php25/PDownload/DownloadFile;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadFile"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lt6/m;->b(Lcom/php25/PDownload/DownloadFile;)Lcom/join/mgps/db/tables/DownloadFileTable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {}, Lt6/j;->n()Lt6/j;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Lq5/b;->k(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->getId()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    int-to-long v0, p0

    .line 17
    return-wide v0
.end method

.method public static update(Lcom/php25/PDownload/DownloadFile;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadFile"
        }
    .end annotation

    .line 1
    invoke-static {}, Lt6/j;->n()Lt6/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getId()Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lq5/b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/join/mgps/db/tables/DownloadFileTable;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getFinished()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    if-ne v1, v3, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setFinished(S)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->isDownloading()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    :cond_1
    invoke-virtual {v0, v2}, Lcom/join/mgps/db/tables/DownloadFileTable;->setDownloading(S)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getFinishTime()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setFinishTime(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getTotalSize()Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setTotalSize(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getPercent()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setPercentage(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getCompleteSize()J

    .line 65
    .line 66
    .line 67
    move-result-wide v1

    .line 68
    long-to-int v2, v1

    .line 69
    invoke-virtual {v0, v2}, Lcom/join/mgps/db/tables/DownloadFileTable;->setCompleteSize(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getGameZipPath()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setGameZipPath(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getVer_name()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/DownloadFileTable;->setVer_name(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/php25/PDownload/DownloadFile;->getId()Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    invoke-virtual {v0, p0}, Lcom/join/mgps/db/tables/DownloadFileTable;->setId(I)V

    .line 95
    .line 96
    .line 97
    invoke-static {}, Lt6/j;->n()Lt6/j;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0, v0}, Lq5/b;->update(Ljava/lang/Object;)I

    .line 102
    .line 103
    .line 104
    return-void
.end method

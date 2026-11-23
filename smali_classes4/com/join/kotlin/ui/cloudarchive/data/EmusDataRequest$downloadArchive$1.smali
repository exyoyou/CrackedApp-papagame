.class public final Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/snowdream/android/app/downloader/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->downloadArchive(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/lang/String;ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J$\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u001a\u0010\r\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0012\u0010\u0010\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "com/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1",
        "Lcom/github/snowdream/android/app/downloader/CommonDownloadFactory$DownloadListener;",
        "onStart",
        "",
        "url",
        "",
        "onWait",
        "onProgress",
        "progressx",
        "",
        "speed",
        "onFinish",
        "onError",
        "updateSize",
        "actualSizex",
        "",
        "onStop",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $donwloadFilePath:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $downloadType:I

.field final synthetic $pathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;ILcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            "I",
            "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->$downloadType:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->$pathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->$donwloadFilePath:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->$context:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->getStatus()Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x5

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->getStatus()Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x4

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lt6/g;->t()Lt6/g;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Lt6/g;->q(Ljava/lang/String;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x1

    .line 30
    const/4 v1, 0x1

    .line 31
    :goto_0
    const/16 v2, 0x65

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    if-ge v1, v2, :cond_3

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Lcom/join/mgps/db/tables/CloudArchiveTable;

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getUserId()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-ne v4, v1, :cond_0

    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const/4 v2, 0x0

    .line 63
    :goto_1
    if-nez v2, :cond_2

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/4 v1, 0x1

    .line 70
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v2, ""

    .line 76
    .line 77
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const-string v2, "userIdNew"

    .line 88
    .line 89
    invoke-static {v2, p1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance p1, Lcom/join/mgps/db/tables/CloudArchiveTable;

    .line 93
    .line 94
    invoke-direct {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;-><init>()V

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_4

    .line 104
    .line 105
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    :cond_4
    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->$downloadType:I

    .line 112
    .line 113
    if-ne v2, v0, :cond_5

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_5
    move v3, v1

    .line 117
    :goto_3
    const-string v1, "folder"

    .line 118
    .line 119
    invoke-virtual {p1, v1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setArchiveType(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->$pathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getMainArchiveLocalPath()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {p1, v1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setArchiveFolder(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->$pathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getSubArchiveLocalPath()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {p1, v1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setMainArchiveLocalPath2(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 141
    .line 142
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getPackageName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {p1, v1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setPackageName(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {p1, v1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setArchiveName(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v3}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setUserId(I)V

    .line 159
    .line 160
    .line 161
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {p1, v1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setGameId(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->$donwloadFilePath:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 171
    .line 172
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v1, Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {p1, v1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setArchiveZipPath(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {p1, v1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setArchiveId(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v0}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setIsFirstRun(I)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 192
    .line 193
    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {p1, v0}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setArchiveDataJson(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    if-nez v3, :cond_6

    .line 201
    .line 202
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    .line 203
    .line 204
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->$context:Landroid/content/Context;

    .line 205
    .line 206
    invoke-static {v0, p1, v1}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->access$unzipToUser0(Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V

    .line 207
    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_6
    sget-object v0, Lcom/join/mgps/va/overmind/i;->g:Lcom/join/mgps/va/overmind/i$a;

    .line 211
    .line 212
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/i$a;->d()Lcom/join/mgps/va/overmind/i;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getUserId()I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/i;->i0(I)V

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    .line 224
    .line 225
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->$context:Landroid/content/Context;

    .line 226
    .line 227
    invoke-static {v0, p1, v1}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->access$unZip(Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V

    .line 228
    .line 229
    .line 230
    :goto_4
    return-void
.end method

.method public onProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p3, "onProgress progress="

    .line 7
    .line 8
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->getStatus()Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 p3, 0x3

    .line 21
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-virtual {p1, p3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->getProgress()Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-virtual {p1, p3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->getActualSize()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    const-wide/32 v2, 0x100000

    .line 48
    .line 49
    .line 50
    const/16 p1, 0x400

    .line 51
    .line 52
    const/16 p3, 0x64

    .line 53
    .line 54
    cmp-long v4, v0, v2

    .line 55
    .line 56
    if-lez v4, :cond_0

    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->getProgressTextShow()Landroidx/lifecycle/MutableLiveData;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->getActualSize()J

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    int-to-long v4, p3

    .line 76
    div-long/2addr v2, v4

    .line 77
    int-to-long p2, p2

    .line 78
    mul-long v2, v2, p2

    .line 79
    .line 80
    int-to-long p1, p1

    .line 81
    div-long/2addr v2, p1

    .line 82
    div-long/2addr v2, p1

    .line 83
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p3, "M/"

    .line 87
    .line 88
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object p3, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    .line 92
    .line 93
    invoke-virtual {p3}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->getActualSize()J

    .line 94
    .line 95
    .line 96
    move-result-wide v2

    .line 97
    div-long/2addr v2, p1

    .line 98
    div-long/2addr v2, p1

    .line 99
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const/16 p1, 0x4d

    .line 103
    .line 104
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->getActualSize()J

    .line 118
    .line 119
    .line 120
    move-result-wide v0

    .line 121
    const-wide/16 v2, 0x0

    .line 122
    .line 123
    cmp-long v4, v0, v2

    .line 124
    .line 125
    if-lez v4, :cond_1

    .line 126
    .line 127
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->getProgressTextShow()Landroidx/lifecycle/MutableLiveData;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    .line 139
    .line 140
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->getActualSize()J

    .line 141
    .line 142
    .line 143
    move-result-wide v2

    .line 144
    int-to-long v4, p3

    .line 145
    div-long/2addr v2, v4

    .line 146
    int-to-long p2, p2

    .line 147
    mul-long v2, v2, p2

    .line 148
    .line 149
    int-to-long p1, p1

    .line 150
    div-long/2addr v2, p1

    .line 151
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string p3, "KB/"

    .line 155
    .line 156
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget-object p3, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    .line 160
    .line 161
    invoke-virtual {p3}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->getActualSize()J

    .line 162
    .line 163
    .line 164
    move-result-wide v2

    .line 165
    div-long/2addr v2, p1

    .line 166
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string p1, "KB"

    .line 170
    .line 171
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    :cond_1
    :goto_0
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->getStatus()Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onStop(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->getStatus()Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x6

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onWait(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->getStatus()Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public updateSize(Ljava/lang/String;J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->setActualSize(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

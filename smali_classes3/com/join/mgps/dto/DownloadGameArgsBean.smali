.class public Lcom/join/mgps/dto/DownloadGameArgsBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field downType:I

.field ext:Ljava/lang/String;

.field ext1:Ljava/lang/String;

.field from:I

.field fromRecommend:Z

.field fromType:I

.field gameId:Ljava/lang/String;

.field keyWord:Ljava/lang/String;

.field location:I

.field nodeId:Ljava/lang/String;

.field packagePath:Ljava/lang/String;

.field private pdInfo:Lcom/join/mgps/dto/DomainInfoBean;

.field recPosition:Ljava/lang/String;

.field remarks:Ljava/lang/String;

.field showDownRecommend:Z

.field volcanoOther:Ljava/lang/String;


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


# virtual methods
.method public getDownType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->downType:I

    .line 2
    .line 3
    return v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->ext:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExt1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->ext1:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFrom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->from:I

    .line 2
    .line 3
    return v0
.end method

.method public getFromType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->fromType:I

    .line 2
    .line 3
    return v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->keyWord:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->location:I

    .line 2
    .line 3
    return v0
.end method

.method public getNodeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->nodeId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPackagePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->packagePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPdInfo()Lcom/join/mgps/dto/DomainInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->pdInfo:Lcom/join/mgps/dto/DomainInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecPosition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->recPosition:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRemarks()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->remarks:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVolcanoOther()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->volcanoOther:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isFromRecommend()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->fromRecommend:Z

    .line 2
    .line 3
    return v0
.end method

.method public isShowDownRecommend()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->showDownRecommend:Z

    .line 2
    .line 3
    return v0
.end method

.method public setDownType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->downType:I

    .line 2
    .line 3
    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ext"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->ext:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExt1(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ext1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->ext1:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFrom(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->from:I

    .line 2
    .line 3
    return-void
.end method

.method public setFromRecommend(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromRecommend"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->fromRecommend:Z

    .line 2
    .line 3
    return-void
.end method

.method public setFromType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->fromType:I

    .line 2
    .line 3
    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setKeyWord(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyWord"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->keyWord:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLocation(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "location"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->location:I

    .line 2
    .line 3
    return-void
.end method

.method public setNodeId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->nodeId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPackagePath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packagePath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->packagePath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPdInfo(Lcom/join/mgps/dto/DomainInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pdInfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->pdInfo:Lcom/join/mgps/dto/DomainInfoBean;

    .line 2
    .line 3
    return-void
.end method

.method public setRecPosition(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recPosition"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->recPosition:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRemarks(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remarks"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->remarks:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setShowDownRecommend(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showDownRecommend"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->showDownRecommend:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVolcanoOther(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volcanoOther"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadGameArgsBean;->volcanoOther:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public syncValue(Lcom/join/kotlin/base/impl/Downloadable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downInfo"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->hasGInfo()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GInfo;->getDownArgs()Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GInfo;->getDownArgs()Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getFrom()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setFrom(I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GInfo;->getDownArgs()Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getFromType()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p0, v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setFromType(I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GInfo;->getDownArgs()Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getKeyWord()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p0, v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setKeyWord(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GInfo;->getDownArgs()Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getRemarks()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p0, v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setRemarks(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GInfo;->getDownArgs()Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getRecPosition()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p0, v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setRecPosition(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GInfo;->getDownArgs()Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getNodeId()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {p0, v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setNodeId(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GInfo;->getDownArgs()Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getVolcanoOther()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p0, v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setRecPosition(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GInfo;->getDownArgs()Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;->isFromRecommend()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    invoke-virtual {p0, v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setFromRecommend(Z)V

    .line 137
    .line 138
    .line 139
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GInfo;->getDownArgs()Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getExt()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_0

    .line 156
    .line 157
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/IExposure;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    .line 162
    .line 163
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/IExposure;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {p0, v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setExt(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_0
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GInfo;->getDownArgs()Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getExt()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {p0, v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setExt(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :goto_0
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/GInfo;->getDownArgs()Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getExt1()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p0, p1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setExt1(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :cond_1
    return-void
.end method

.class public abstract Lcom/join/mgps/dto/DownloadPointBase;
.super Lcom/join/kotlin/base/impl/BaseDownloadable;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/base/impl/GInfo;
.implements Ljava/io/Serializable;


# instance fields
.field private _from:I

.field private _from_type:I

.field private ext:Ljava/lang/String;

.field private ext1:Ljava/lang/String;

.field private ext2:Ljava/lang/String;

.field private ext3:Ljava/lang/String;

.field private ext4:Ljava/lang/String;

.field private isFromRecomDown:Z

.field private keyword:Ljava/lang/String;

.field private nodeId:Ljava/lang/String;

.field private position_path:Lcom/join/mgps/dto/VolcanoOther;

.field private reMarks:Ljava/lang/String;

.field private recPosition:Ljava/lang/String;

.field private where:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/impl/BaseDownloadable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->_from:I

    .line 6
    .line 7
    iput v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->_from_type:I

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->recPosition:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->reMarks:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public buildDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownArgs()Lcom/join/mgps/dto/DownloadGameArgsBean;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->isGame()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setFrom(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setFromType(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getKeyword()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setKeyWord(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setRemarks(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getRecPosition()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setRecPosition(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getNodeId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setNodeId(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getVolcanoOtherJsonStr()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setRecPosition(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->isFromRecomDown()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setFromRecommend(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getExt()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_0

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setExt(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getExt()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setExt(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getExt1()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setExt1(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-object v0

    .line 113
    :cond_1
    const/4 v0, 0x0

    .line 114
    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->ext:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExt1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->ext1:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExt2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->ext2:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExt3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->ext3:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExt4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->ext4:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGInfo()Lcom/join/kotlin/base/impl/GInfo;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    return-object p0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->keyword:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNodeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->nodeId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPosition_path()Lcom/join/mgps/dto/VolcanoOther;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->position_path:Lcom/join/mgps/dto/VolcanoOther;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReMarks()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->reMarks:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecPosition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->recPosition:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSpTagInfo()Lcom/join/mgps/dto/TipNew;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTagInfo()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getVolcanoOtherJsonStr()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->position_path:Lcom/join/mgps/dto/VolcanoOther;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/dto/DownloadPointBase;->position_path:Lcom/join/mgps/dto/VolcanoOther;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, ""

    .line 17
    .line 18
    :goto_0
    return-object v0
.end method

.method public getWhere()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->where:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public get_from()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->_from:I

    .line 2
    .line 3
    return v0
.end method

.method public get_from_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->_from_type:I

    .line 2
    .line 3
    return v0
.end method

.method public hasGInfo()Z
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public isAndroidGame()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getTagInfo()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getTagInfo()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->p0(Ljava/util/List;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public isBtGame()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getSpTagInfo()Lcom/join/mgps/dto/TipNew;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getSpTagInfo()Lcom/join/mgps/dto/TipNew;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getBt_game()Lcom/join/mgps/dto/TipBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public isFromRecomDown()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->isFromRecomDown:Z

    .line 2
    .line 3
    return v0
.end method

.method public isGame()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isGameVm()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->isModGameVm()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->isSingleGameVm()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->isNetGameVm()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->isH5VmGame()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 29
    :goto_1
    return v0
.end method

.method public isH5Game()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/join/kotlin/base/impl/GInfo;->getPluginNum()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ""

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0
.end method

.method public isH5VmGame()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getTagInfo()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getTagInfo()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/join/mgps/dto/TipBean;

    .line 28
    .line 29
    const-string v3, "268"

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    :cond_2
    return v1
.end method

.method public isHmCloud()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getTagInfo()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getTagInfo()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getTagInfo()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/join/mgps/dto/TipBean;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v4, "269"

    .line 44
    .line 45
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_2

    .line 50
    .line 51
    const-string v3, "271"

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_2

    .line 62
    .line 63
    const-string v3, "272"

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_1

    .line 74
    .line 75
    :cond_2
    const/4 v1, 0x1

    .line 76
    :cond_3
    :goto_0
    return v1
.end method

.method public isMiniGame()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getSpTagInfo()Lcom/join/mgps/dto/TipNew;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getSpTagInfo()Lcom/join/mgps/dto/TipNew;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getMini_game()Lcom/join/mgps/dto/TipBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public isModGameVm()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getSpTagInfo()Lcom/join/mgps/dto/TipNew;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getSpTagInfo()Lcom/join/mgps/dto/TipNew;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getMod_game_vm()Lcom/join/mgps/dto/TipBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public isNetGame()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getTagInfo()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->t2(Ljava/util/List;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isNetGameVm()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getSpTagInfo()Lcom/join/mgps/dto/TipNew;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getSpTagInfo()Lcom/join/mgps/dto/TipNew;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getNet_game_vm()Lcom/join/mgps/dto/TipBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public isSingleGameVm()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getSpTagInfo()Lcom/join/mgps/dto/TipNew;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getSpTagInfo()Lcom/join/mgps/dto/TipNew;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getSingle_game_vm()Lcom/join/mgps/dto/TipBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
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
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadPointBase;->ext:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadPointBase;->ext1:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExt2(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ext2"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadPointBase;->ext2:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExt3(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ext3"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadPointBase;->ext3:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExt4(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ext4"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadPointBase;->ext4:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFromRecomDown(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromRecomDown"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/DownloadPointBase;->isFromRecomDown:Z

    .line 2
    .line 3
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyword"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadPointBase;->keyword:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadPointBase;->nodeId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPosition_path(Lcom/join/mgps/dto/VolcanoOther;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position_path"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadPointBase;->position_path:Lcom/join/mgps/dto/VolcanoOther;

    .line 2
    .line 3
    return-void
.end method

.method public setReMarks(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reMarks"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadPointBase;->reMarks:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadPointBase;->recPosition:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setWhere(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "where"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadPointBase;->where:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public set_from(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_from"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DownloadPointBase;->_from:I

    .line 2
    .line 3
    return-void
.end method

.method public set_from_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_from_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DownloadPointBase;->_from_type:I

    .line 2
    .line 3
    return-void
.end method

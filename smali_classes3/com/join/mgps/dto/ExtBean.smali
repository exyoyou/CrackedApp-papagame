.class public Lcom/join/mgps/dto/ExtBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final STAT_FORMAT_1:Ljava/lang/String; = "firstModule$##$secondModule$##$keyWord$##$chatId$##$fromTabId$##$from$##$sopNo$##$sopName$##$resourceId"


# instance fields
.field private _from_type:I

.field private actType:Ljava/lang/String;

.field private chatId:Ljava/lang/String;

.field private collectId:Ljava/lang/String;

.field private dataFlag:Ljava/lang/String;

.field private down_from:I

.field private firstModule:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private fromTabId:Ljava/lang/String;

.field private from_id:Ljava/lang/String;

.field private gameFlag:I

.field private gameId:Ljava/lang/String;

.field private guideKey:Ljava/lang/String;

.field private hasExplore:Z

.field private isJoin:Ljava/lang/String;

.field private isOnlineGame:Z

.field private isResultPage:Ljava/lang/String;

.field private keepOrginFrom:Z

.field private keyMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keyword:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private memberCount:Ljava/lang/String;

.field private nodeId:Ljava/lang/String;

.field private orginFrom:Ljava/lang/String;

.field private papaPage:Ljava/lang/String;

.field private parent:Lcom/join/mgps/dto/ExtBean;

.field private position:Ljava/lang/String;

.field private qkPosition:Ljava/lang/String;

.field private reMarks:Ljava/lang/String;

.field private recPosition:Ljava/lang/String;

.field private recScene:Ljava/lang/String;

.field private resourceId:Ljava/lang/String;

.field private resultCode:Ljava/lang/String;

.field private sceneFormat:Ljava/lang/String;

.field private scenesCode:Ljava/lang/String;

.field private secondModule:Ljava/lang/String;

.field private sopName:Ljava/lang/String;

.field private sopNo:Ljava/lang/String;

.field private tag_ids:Ljava/lang/String;

.field private testAbNumber:Ljava/lang/String;

.field private typeCode:Ljava/lang/String;

.field private volcanoOther:Ljava/lang/String;

.field private where:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/dto/ExtBean;->down_from:I

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/dto/ExtBean;->keepOrginFrom:Z

    const-string v1, ""

    .line 4
    iput-object v1, p0, Lcom/join/mgps/dto/ExtBean;->tag_ids:Ljava/lang/String;

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/dto/ExtBean;->hasExplore:Z

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/ExtBean;->keyMaps:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_from_type"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/join/mgps/dto/ExtBean;->down_from:I

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/dto/ExtBean;->keepOrginFrom:Z

    const-string v1, ""

    .line 10
    iput-object v1, p0, Lcom/join/mgps/dto/ExtBean;->tag_ids:Ljava/lang/String;

    .line 11
    iput-boolean v0, p0, Lcom/join/mgps/dto/ExtBean;->hasExplore:Z

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/ExtBean;->keyMaps:Ljava/util/HashMap;

    .line 13
    iput p1, p0, Lcom/join/mgps/dto/ExtBean;->_from_type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "position"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/join/mgps/dto/ExtBean;->down_from:I

    .line 16
    iput-boolean v0, p0, Lcom/join/mgps/dto/ExtBean;->keepOrginFrom:Z

    const-string v1, ""

    .line 17
    iput-object v1, p0, Lcom/join/mgps/dto/ExtBean;->tag_ids:Ljava/lang/String;

    .line 18
    iput-boolean v0, p0, Lcom/join/mgps/dto/ExtBean;->hasExplore:Z

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/ExtBean;->keyMaps:Ljava/util/HashMap;

    .line 20
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->from:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/join/mgps/dto/ExtBean;->position:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "from_id",
            "position"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/join/mgps/dto/ExtBean;->down_from:I

    .line 24
    iput-boolean v0, p0, Lcom/join/mgps/dto/ExtBean;->keepOrginFrom:Z

    const-string v1, ""

    .line 25
    iput-object v1, p0, Lcom/join/mgps/dto/ExtBean;->tag_ids:Ljava/lang/String;

    .line 26
    iput-boolean v0, p0, Lcom/join/mgps/dto/ExtBean;->hasExplore:Z

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/ExtBean;->keyMaps:Ljava/util/HashMap;

    .line 28
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->from:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/join/mgps/dto/ExtBean;->from_id:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/join/mgps/dto/ExtBean;->position:Ljava/lang/String;

    return-void
.end method

.method private buildParentScene(Lcom/join/mgps/dto/ExtBean;)Ljava/lang/StringBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p1, Lcom/join/mgps/dto/ExtBean;->parent:Lcom/join/mgps/dto/ExtBean;

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    invoke-direct {p0, v1}, Lcom/join/mgps/dto/ExtBean;->buildParentScene(Lcom/join/mgps/dto/ExtBean;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-gtz v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    sget-object v2, Lcom/papa/sim/statistic/t;->l:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/join/mgps/dto/ExtBean;->ensureRecSceneIfMissing(Lcom/join/mgps/dto/ExtBean;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p1, Lcom/join/mgps/dto/ExtBean;->recScene:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-gtz v1, :cond_3

    .line 64
    .line 65
    iget-object p1, p1, Lcom/join/mgps/dto/ExtBean;->recScene:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    sget-object v1, Lcom/papa/sim/statistic/t;->l:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object p1, p1, Lcom/join/mgps/dto/ExtBean;->recScene:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :cond_4
    :goto_1
    return-object v0
.end method

.method private static ensureRecSceneIfMissing(Lcom/join/mgps/dto/ExtBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->recScene:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->sceneFormat:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->sceneFormat:Ljava/lang/String;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const-string v0, "firstModule$##$secondModule$##$keyWord$##$chatId$##$fromTabId$##$from$##$sopNo$##$sopName$##$resourceId"

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/dto/ExtBean;->buildScene(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static game(Lcom/join/kotlin/base/impl/Downloadable;)Lcom/join/mgps/dto/ExtBean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gInfo"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lcom/join/kotlin/base/impl/Downloadable;->hasGInfo()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    invoke-interface {p0}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Lcom/join/kotlin/base/impl/GInfo;->getTagInfo()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Lcom/join/mgps/Util/w0;->p(Ljava/util/List;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->cloudGame:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {p0}, Lcom/join/kotlin/base/impl/GameType;->isH5Game()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->h5Game:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-interface {p0}, Lcom/join/kotlin/base/impl/GameType;->isGame()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->game:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_0
    invoke-interface {p0}, Lcom/join/kotlin/base/impl/GameType;->isModGameVm()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    invoke-interface {p0}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v1}, Lcom/join/kotlin/base/impl/GInfo;->getModGameId()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 82
    .line 83
    .line 84
    invoke-interface {p0}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-interface {p0}, Lcom/join/kotlin/base/impl/GInfo;->getModGameId()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    invoke-interface {p0}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-interface {v1}, Lcom/join/kotlin/base/impl/GInfo;->getGameId()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 105
    .line 106
    .line 107
    invoke-interface {p0}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-interface {p0}, Lcom/join/kotlin/base/impl/GInfo;->getGameId()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 116
    .line 117
    .line 118
    :cond_4
    :goto_1
    return-object v0
.end method

.method private scanFieldMap()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->keyMaps:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->parent:Lcom/join/mgps/dto/ExtBean;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFirstModule()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->keyMaps:Ljava/util/HashMap;

    .line 21
    .line 22
    const-string v1, "firstModule"

    .line 23
    .line 24
    iget-object v2, p0, Lcom/join/mgps/dto/ExtBean;->firstModule:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->parent:Lcom/join/mgps/dto/ExtBean;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getSecondModule()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->keyMaps:Ljava/util/HashMap;

    .line 44
    .line 45
    const-string v1, "secondModule"

    .line 46
    .line 47
    iget-object v2, p0, Lcom/join/mgps/dto/ExtBean;->secondModule:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->keyMaps:Ljava/util/HashMap;

    .line 53
    .line 54
    const-string v1, "chatId"

    .line 55
    .line 56
    iget-object v2, p0, Lcom/join/mgps/dto/ExtBean;->chatId:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->from:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    const-string v0, "platform"

    .line 70
    .line 71
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->from:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_5

    .line 78
    .line 79
    const-string v0, "0"

    .line 80
    .line 81
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->from:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_5

    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->parent:Lcom/join/mgps/dto/ExtBean;

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->keyMaps:Ljava/util/HashMap;

    .line 104
    .line 105
    const-string v1, "from"

    .line 106
    .line 107
    iget-object v2, p0, Lcom/join/mgps/dto/ExtBean;->from:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->keyMaps:Ljava/util/HashMap;

    .line 113
    .line 114
    const-string v1, "keyWord"

    .line 115
    .line 116
    iget-object v2, p0, Lcom/join/mgps/dto/ExtBean;->keyword:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->keyMaps:Ljava/util/HashMap;

    .line 122
    .line 123
    const-string v1, "fromTabId"

    .line 124
    .line 125
    iget-object v2, p0, Lcom/join/mgps/dto/ExtBean;->fromTabId:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->keyMaps:Ljava/util/HashMap;

    .line 131
    .line 132
    const-string v1, "sopNo"

    .line 133
    .line 134
    iget-object v2, p0, Lcom/join/mgps/dto/ExtBean;->sopNo:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->keyMaps:Ljava/util/HashMap;

    .line 140
    .line 141
    const-string v1, "sopName"

    .line 142
    .line 143
    iget-object v2, p0, Lcom/join/mgps/dto/ExtBean;->sopName:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->keyMaps:Ljava/util/HashMap;

    .line 149
    .line 150
    const-string v1, "resourceId"

    .line 151
    .line 152
    iget-object v2, p0, Lcom/join/mgps/dto/ExtBean;->resourceId:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->keyMaps:Ljava/util/HashMap;

    .line 158
    .line 159
    const-string v1, "gameId"

    .line 160
    .line 161
    iget-object v2, p0, Lcom/join/mgps/dto/ExtBean;->gameId:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->keyMaps:Ljava/util/HashMap;

    .line 167
    .line 168
    const-string v1, "scenesCode"

    .line 169
    .line 170
    iget-object v2, p0, Lcom/join/mgps/dto/ExtBean;->scenesCode:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->keyMaps:Ljava/util/HashMap;

    .line 176
    .line 177
    const-string v1, "collectId"

    .line 178
    .line 179
    iget-object v2, p0, Lcom/join/mgps/dto/ExtBean;->collectId:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->keyMaps:Ljava/util/HashMap;

    .line 185
    .line 186
    const-string v1, "typeCode"

    .line 187
    .line 188
    iget-object v2, p0, Lcom/join/mgps/dto/ExtBean;->typeCode:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->keyMaps:Ljava/util/HashMap;

    .line 194
    .line 195
    const-string v1, "papaPage"

    .line 196
    .line 197
    iget-object v2, p0, Lcom/join/mgps/dto/ExtBean;->papaPage:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->keyMaps:Ljava/util/HashMap;

    .line 203
    .line 204
    const-string v1, "resultCode"

    .line 205
    .line 206
    iget-object v2, p0, Lcom/join/mgps/dto/ExtBean;->resultCode:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    return-void
.end method


# virtual methods
.method public buildScene()Lcom/join/mgps/dto/ExtBean;
    .locals 1

    const-string v0, "firstModule$##$secondModule$##$keyWord$##$chatId$##$fromTabId$##$from$##$sopNo$##$sopName$##$resourceId"

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/dto/ExtBean;->buildScene(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    return-object p0
.end method

.method public buildScene(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "firstModule$##$secondModule$##$keyWord$##$chatId$##$fromTabId$##$from$##$sopNo$##$sopName$##$resourceId"

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->sceneFormat:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/dto/ExtBean;->scanFieldMap()V

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_0
    const-string v0, "\\$##\\$"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 8
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 9
    iget-object v4, p0, Lcom/join/mgps/dto/ExtBean;->keyMaps:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 10
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "0"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 12
    sget-object v4, Lcom/papa/sim/statistic/t;->l:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->recScene:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return-object p0
.end method

.method public cloneScene()Lcom/join/mgps/dto/ExtBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->recScene:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setRecScene(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->sceneFormat:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setSceneFormat(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public copy()Lcom/join/mgps/dto/ExtBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->parent:Lcom/join/mgps/dto/ExtBean;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->papaPage:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setPapaPage(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->firstModule:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->secondModule:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->sopNo:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->sopName:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->gameId:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->resourceId:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->resultCode:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->typeCode:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->chatId:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->fromTabId:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFromTabId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->tag_ids:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTag_ids(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->dataFlag:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setDataFlag(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 74
    .line 75
    .line 76
    iget v1, p0, Lcom/join/mgps/dto/ExtBean;->gameFlag:I

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameFlag(I)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->recPosition:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setRecPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->location:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setLocation(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->from:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->position:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->nodeId:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setNodeId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->where:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setWhere(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->keyword:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setKeyword(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->testAbNumber:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTestAbNumber(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->isJoin:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setIsJoin(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->isResultPage:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setIsResultPage(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->actType:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setActType(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->recScene:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setRecScene(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->sceneFormat:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setSceneFormat(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 144
    .line 145
    .line 146
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->reMarks:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->qkPosition:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setQkPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 154
    .line 155
    .line 156
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->collectId:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setCollectId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 159
    .line 160
    .line 161
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->scenesCode:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 164
    .line 165
    .line 166
    return-object v0
.end method

.method public getActType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->actType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->chatId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCollectId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->collectId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDataFlag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->dataFlag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDown_from()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ExtBean;->down_from:I

    .line 2
    .line 3
    return v0
.end method

.method public getFirstModule()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->firstModule:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->from:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFromTabId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->fromTabId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFrom_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->from_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ExtBean;->gameFlag:I

    .line 2
    .line 3
    return v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGuideKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->guideKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIsJoin()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->isJoin:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIsResultPage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->isResultPage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->keyword:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->location:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMemberCount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->memberCount:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNodeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->nodeId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOrginFrom()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->orginFrom:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPapaPage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->papaPage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParent()Lcom/join/mgps/dto/ExtBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->parent:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->position:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getQkPosition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->qkPosition:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReMarks()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->reMarks:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecPosition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->recPosition:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecScene()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->recScene:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->resourceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->resultCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSceneFormat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->sceneFormat:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScenesCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->scenesCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSecondModule()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->secondModule:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSopName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->sopName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSopNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->sopNo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTag_ids()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->tag_ids:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTestAbNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->testAbNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTypeCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->typeCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVolcanoOther()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->volcanoOther:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWhere()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->where:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public get_from_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ExtBean;->_from_type:I

    .line 2
    .line 3
    return v0
.end method

.method public hasExplore()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ExtBean;->hasExplore:Z

    .line 2
    .line 3
    return v0
.end method

.method public isKeepOrginFrom()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ExtBean;->keepOrginFrom:Z

    .line 2
    .line 3
    return v0
.end method

.method public isOnlineGame()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ExtBean;->isOnlineGame:Z

    .line 2
    .line 3
    return v0
.end method

.method public itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public setActType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->actType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chatId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->chatId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCollectId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collectId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->collectId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDataFlag(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataFlag"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->dataFlag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDown_from(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "down_from"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ExtBean;->down_from:I

    .line 2
    .line 3
    return-void
.end method

.method public setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firstModule"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->firstModule:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
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
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->from:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFromTabId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromTabId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->fromTabId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFrom_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->from_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGameFlag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameFlag"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ExtBean;->gameFlag:I

    .line 2
    .line 3
    return-void
.end method

.method public setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
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
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "guideKey"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->guideKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setHasExplore(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasExplore"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ExtBean;->hasExplore:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIsJoin(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isJoin"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->isJoin:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIsResultPage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isResultPage"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->isResultPage:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setKeepOrginFrom(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keepOrginFrom"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ExtBean;->keepOrginFrom:Z

    .line 2
    .line 3
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
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
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->keyword:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLocation(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->location:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMemberCount(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memberCount"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->memberCount:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setNodeId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
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
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->nodeId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setOnlineGame(Z)Lcom/join/mgps/dto/ExtBean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onlineGame"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ExtBean;->isOnlineGame:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setOrginFrom(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orginFrom"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->orginFrom:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPapaPage(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "papaPage"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->papaPage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->parent:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->firstModule:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->getFirstModule()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->getFirstModule()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->secondModule:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->getSecondModule()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->getSecondModule()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p0, v0}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->chatId:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->getChatId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->getChatId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p0, v0}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 78
    .line 79
    .line 80
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/dto/ExtBean;->from:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p0, p1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 103
    .line 104
    .line 105
    :cond_3
    return-object p0
.end method

.method public setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->position:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setQkPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qkPosition"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->qkPosition:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
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
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->reMarks:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRecPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
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
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->recPosition:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRecScene(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recScene"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->recScene:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->resourceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultCode"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->resultCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSceneFormat(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sceneFormat"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->sceneFormat:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scenesCode"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->scenesCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secondModule"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->secondModule:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sopName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->sopName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sopNo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->sopNo:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTag_ids(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag_ids"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->tag_ids:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTestAbNumber(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testAbNumber"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->testAbNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeCode"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->typeCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setVolcanoOther(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
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
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->volcanoOther:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setWhere(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
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
    iput-object p1, p0, Lcom/join/mgps/dto/ExtBean;->where:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public set_from_type(I)Lcom/join/mgps/dto/ExtBean;
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
    iput p1, p0, Lcom/join/mgps/dto/ExtBean;->_from_type:I

    .line 2
    .line 3
    return-object p0
.end method

.method public toExt()Lcom/papa/sim/statistic/Ext;
    .locals 4

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->papaPage:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPapaPage(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->firstModule:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFirstModule(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->secondModule:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setSecondModule(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->sopNo:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setSopNo(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->sopName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setSopName(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->gameId:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->resourceId:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setResourceId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->resultCode:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setResultCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->typeCode:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setTypeCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->chatId:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setChatId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->fromTabId:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->tag_ids:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setTag_ids(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->dataFlag:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setDataFlag(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget v1, p0, Lcom/join/mgps/dto/ExtBean;->gameFlag:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->recPosition:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setRecPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->location:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setLocation(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->from:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->position:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->nodeId:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setNodeId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->where:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setWhere(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->keyword:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setKeyWord(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->testAbNumber:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setTestAbNumber(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->isJoin:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->isResultPage:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setIsResultPage(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->actType:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setActType(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->memberCount:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setMemberCount(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->recScene:Ljava/lang/String;

    .line 137
    .line 138
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/dto/ExtBean;->parent:Lcom/join/mgps/dto/ExtBean;

    .line 139
    .line 140
    if-eqz v2, :cond_3

    .line 141
    .line 142
    invoke-direct {p0, v2}, Lcom/join/mgps/dto/ExtBean;->buildParentScene(Lcom/join/mgps/dto/ExtBean;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    if-eqz v2, :cond_0

    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    goto :goto_0

    .line 153
    :cond_0
    const-string v2, ""

    .line 154
    .line 155
    :goto_0
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-eqz v3, :cond_1

    .line 160
    .line 161
    iget-object v3, p0, Lcom/join/mgps/dto/ExtBean;->recScene:Ljava/lang/String;

    .line 162
    .line 163
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eqz v3, :cond_1

    .line 168
    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    sget-object v2, Lcom/papa/sim/statistic/t;->l:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget-object v2, p0, Lcom/join/mgps/dto/ExtBean;->recScene:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    goto :goto_1

    .line 192
    :cond_1
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-eqz v3, :cond_2

    .line 197
    .line 198
    move-object v1, v2

    .line 199
    goto :goto_1

    .line 200
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->recScene:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :catch_0
    move-exception v2

    .line 204
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 205
    .line 206
    .line 207
    :cond_3
    :goto_1
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setRecScene(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 208
    .line 209
    .line 210
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->reMarks:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 213
    .line 214
    .line 215
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->qkPosition:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setQkPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 218
    .line 219
    .line 220
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->collectId:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setCollectId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 223
    .line 224
    .line 225
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->scenesCode:Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setScenesCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 228
    .line 229
    .line 230
    iget-object v1, p0, Lcom/join/mgps/dto/ExtBean;->guideKey:Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGuideKey(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 233
    .line 234
    .line 235
    return-object v0
.end method

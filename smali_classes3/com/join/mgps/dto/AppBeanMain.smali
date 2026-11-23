.class public Lcom/join/mgps/dto/AppBeanMain;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private butnShowTypr:I

.field private crc_link_type_val:Ljava/lang/String;

.field private ext1:Ljava/lang/String;

.field private ext2:Ljava/lang/String;

.field private ext3:Ljava/lang/String;

.field private ext4:Ljava/lang/String;

.field private game_info:Lcom/join/mgps/dto/AppBean;

.field private jump_type:I

.field private link_type:I

.field private link_type_val:Ljava/lang/String;

.field private tpl_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILcom/join/mgps/dto/AppBean;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "link_type",
            "link_type_val",
            "crc_link_type_val",
            "jump_type",
            "game_info",
            "tpl_type",
            "butnShowTypr"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/AppBeanMain;->link_type:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/AppBeanMain;->link_type_val:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/AppBeanMain;->crc_link_type_val:Ljava/lang/String;

    .line 6
    iput p4, p0, Lcom/join/mgps/dto/AppBeanMain;->jump_type:I

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/AppBeanMain;->game_info:Lcom/join/mgps/dto/AppBean;

    .line 8
    iput-object p6, p0, Lcom/join/mgps/dto/AppBeanMain;->tpl_type:Ljava/lang/String;

    .line 9
    iput p7, p0, Lcom/join/mgps/dto/AppBeanMain;->butnShowTypr:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "link_type",
            "link_type_val",
            "crc_link_type_val",
            "jump_type",
            "tpl_type",
            "butnShowTypr"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/join/mgps/dto/AppBeanMain;->link_type:I

    .line 12
    iput-object p2, p0, Lcom/join/mgps/dto/AppBeanMain;->link_type_val:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/join/mgps/dto/AppBeanMain;->crc_link_type_val:Ljava/lang/String;

    .line 14
    iput p4, p0, Lcom/join/mgps/dto/AppBeanMain;->jump_type:I

    .line 15
    iput-object p5, p0, Lcom/join/mgps/dto/AppBeanMain;->tpl_type:Ljava/lang/String;

    .line 16
    iput p6, p0, Lcom/join/mgps/dto/AppBeanMain;->butnShowTypr:I

    return-void
.end method


# virtual methods
.method public getButnShowTypr()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBeanMain;->butnShowTypr:I

    .line 2
    .line 3
    return v0
.end method

.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBeanMain;->crc_link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExt1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBeanMain;->ext1:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExt2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBeanMain;->ext2:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExt3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBeanMain;->ext3:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExt4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBeanMain;->ext4:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_info()Lcom/join/mgps/dto/AppBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBeanMain;->game_info:Lcom/join/mgps/dto/AppBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/dto/AppBeanMain;->jump_type:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/join/mgps/dto/AppBeanMain;->link_type:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/dto/AppBeanMain;->link_type_val:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/join/mgps/dto/AppBeanMain;->link_type:I

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-ne v1, v2, :cond_2

    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/dto/AppBeanMain;->game_info:Lcom/join/mgps/dto/AppBean;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getGame_info_tpl_type()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/dto/AppBeanMain;->game_info:Lcom/join/mgps/dto/AppBean;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v3, p0, Lcom/join/mgps/dto/AppBeanMain;->game_info:Lcom/join/mgps/dto/AppBean;

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v3, p0, Lcom/join/mgps/dto/AppBeanMain;->game_info:Lcom/join/mgps/dto/AppBean;

    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadPointBase;->getRecPosition()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ExtBean;->setRecPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iget-object v3, p0, Lcom/join/mgps/dto/AppBeanMain;->game_info:Lcom/join/mgps/dto/AppBean;

    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget-object v3, p0, Lcom/join/mgps/dto/AppBeanMain;->game_info:Lcom/join/mgps/dto/AppBean;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/join/mgps/dto/VolcanoOther;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    if-eqz v3, :cond_0

    .line 80
    .line 81
    iget-object v3, p0, Lcom/join/mgps/dto/AppBeanMain;->game_info:Lcom/join/mgps/dto/AppBean;

    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/join/mgps/dto/VolcanoOther;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-static {v3}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    const-string v3, ""

    .line 93
    .line 94
    :goto_0
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ExtBean;->setVolcanoOther(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget-object v3, p0, Lcom/join/mgps/dto/AppBeanMain;->game_info:Lcom/join/mgps/dto/AppBean;

    .line 99
    .line 100
    if-eqz v3, :cond_1

    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->t2(Ljava/util/List;)Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_1
    const/4 v2, 0x0

    .line 114
    :goto_1
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setOnlineGame(Z)Lcom/join/mgps/dto/ExtBean;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/dto/AppBeanMain;->tpl_type:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :goto_2
    iget-object v1, p0, Lcom/join/mgps/dto/AppBeanMain;->ext1:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExt1(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/join/mgps/dto/AppBeanMain;->ext2:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExt2(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/join/mgps/dto/AppBeanMain;->ext3:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExt3(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Lcom/join/mgps/dto/AppBeanMain;->ext4:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExt4(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v1, p0, Lcom/join/mgps/dto/AppBeanMain;->crc_link_type_val:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return-object v0
.end method

.method public getJump_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBeanMain;->jump_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getLink_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBeanMain;->link_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getLink_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBeanMain;->link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBeanMain;->tpl_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCrc_link_type_val(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crc_link_type_val"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBeanMain;->crc_link_type_val:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBeanMain;->ext1:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBeanMain;->ext2:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBeanMain;->ext3:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBeanMain;->ext4:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_info(Lcom/join/mgps/dto/AppBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBeanMain;->game_info:Lcom/join/mgps/dto/AppBean;

    .line 2
    .line 3
    return-void
.end method

.method public setJump_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jump_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBeanMain;->jump_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setLink_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "link_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBeanMain;->link_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setLink_type_val(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "link_type_val"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBeanMain;->link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTpl_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tpl_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBeanMain;->tpl_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.class public Lcom/join/mgps/Util/IntentDateBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private crc_link_type_val:Ljava/lang/String;

.field private ext1:Ljava/lang/String;

.field private ext2:Ljava/lang/String;

.field private ext3:Ljava/lang/String;

.field private ext4:Ljava/lang/String;

.field private extBean:Lcom/join/mgps/dto/ExtBean;

.field private from:Ljava/lang/String;

.field private jump_type:I

.field private link_type:I

.field private link_type_val:Ljava/lang/String;

.field private object:Ljava/lang/Object;

.field private tpl_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "normal"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/Util/IntentDateBean;->from:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
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
            "jump_type",
            "link_type_val",
            "crc_link_type_val",
            "tpl_type",
            "object"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "normal"

    .line 4
    iput-object v0, p0, Lcom/join/mgps/Util/IntentDateBean;->from:Ljava/lang/String;

    .line 5
    iput p1, p0, Lcom/join/mgps/Util/IntentDateBean;->link_type:I

    .line 6
    iput p2, p0, Lcom/join/mgps/Util/IntentDateBean;->jump_type:I

    .line 7
    iput-object p3, p0, Lcom/join/mgps/Util/IntentDateBean;->link_type_val:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/join/mgps/Util/IntentDateBean;->crc_link_type_val:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/join/mgps/Util/IntentDateBean;->tpl_type:Ljava/lang/String;

    .line 10
    iput-object p6, p0, Lcom/join/mgps/Util/IntentDateBean;->object:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentDateBean;->crc_link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "cld_"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/t2;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getExt1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentDateBean;->ext1:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExt2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentDateBean;->ext2:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExt3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentDateBean;->ext3:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExt4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentDateBean;->ext4:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentDateBean;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/Util/IntentDateBean;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/IntentDateBean;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 13
    .line 14
    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentDateBean;->from:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJump_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/IntentDateBean;->jump_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getLink_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/IntentDateBean;->link_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getLink_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentDateBean;->link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentDateBean;->object:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/IntentDateBean;->tpl_type:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/Util/IntentDateBean;->crc_link_type_val:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/Util/IntentDateBean;->ext1:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/Util/IntentDateBean;->ext2:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/Util/IntentDateBean;->ext3:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/Util/IntentDateBean;->ext4:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExtBean(Lcom/join/mgps/dto/ExtBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/IntentDateBean;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/Util/IntentDateBean;->from:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/Util/IntentDateBean;->jump_type:I

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
    iput p1, p0, Lcom/join/mgps/Util/IntentDateBean;->link_type:I

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
    iput-object p1, p0, Lcom/join/mgps/Util/IntentDateBean;->link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/IntentDateBean;->object:Ljava/lang/Object;

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
    iput-object p1, p0, Lcom/join/mgps/Util/IntentDateBean;->tpl_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "IntentDateBean{link_type="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/join/mgps/Util/IntentDateBean;->link_type:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", jump_type="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/join/mgps/Util/IntentDateBean;->jump_type:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", link_type_val=\'"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/Util/IntentDateBean;->link_type_val:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x27

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, ", crc_link_type_val=\'"

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/join/mgps/Util/IntentDateBean;->crc_link_type_val:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ", tpl_type=\'"

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/join/mgps/Util/IntentDateBean;->tpl_type:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, ", object="

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/join/mgps/Util/IntentDateBean;->object:Ljava/lang/Object;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, ", from="

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/join/mgps/Util/IntentDateBean;->from:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const/16 v1, 0x7d

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0
.end method

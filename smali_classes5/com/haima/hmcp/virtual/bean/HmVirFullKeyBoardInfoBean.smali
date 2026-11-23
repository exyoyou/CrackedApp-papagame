.class public Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field column:I

.field columnNum:I

.field keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;",
            ">;"
        }
    .end annotation
.end field

.field name:Ljava/lang/String;

.field needChangeTxtColor:Z

.field row:I

.field rowNum:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->row:I

    .line 6
    iput p2, p0, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->column:I

    .line 7
    iput p3, p0, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->rowNum:I

    .line 8
    iput-object p5, p0, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->name:Ljava/lang/String;

    .line 9
    iput p4, p0, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->columnNum:I

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->keys:Ljava/util/List;

    .line 11
    new-instance p2, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    invoke-direct {p2, p5, p6}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;IZ)V
    .locals 0

    .line 12
    invoke-direct/range {p0 .. p6}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;-><init>(IIIILjava/lang/String;I)V

    .line 13
    iput-boolean p7, p0, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->needChangeTxtColor:Z

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->row:I

    .line 16
    iput p2, p0, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->column:I

    .line 17
    iput p3, p0, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->rowNum:I

    .line 18
    iput-object p5, p0, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->name:Ljava/lang/String;

    .line 19
    iput p4, p0, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->columnNum:I

    .line 20
    iput-object p6, p0, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->keys:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;",
            ">;Z)V"
        }
    .end annotation

    .line 21
    invoke-direct/range {p0 .. p6}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;-><init>(IIIILjava/lang/String;Ljava/util/List;)V

    .line 22
    iput-boolean p7, p0, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->needChangeTxtColor:Z

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move v6, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;-><init>(IIIILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IZ)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move v6, p4

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;-><init>(IIIILjava/lang/String;I)V

    .line 3
    iput-boolean p5, p0, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->needChangeTxtColor:Z

    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->column:I

    .line 2
    .line 3
    return v0
.end method

.method public getColumnNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->columnNum:I

    .line 2
    .line 3
    return v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->keys:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRow()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->row:I

    .line 2
    .line 3
    return v0
.end method

.method public getRowNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->rowNum:I

    .line 2
    .line 3
    return v0
.end method

.method public isNeedChangeTxtColor()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->needChangeTxtColor:Z

    .line 2
    .line 3
    return v0
.end method

.method public setNeedChangeTxtColor(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirFullKeyBoardInfoBean;->needChangeTxtColor:Z

    .line 2
    .line 3
    return-void
.end method

.class public Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field code:I

.field column:I

.field columnNum:I

.field key:Ljava/lang/String;

.field row:I

.field rowNum:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;->row:I

    .line 4
    iput p2, p0, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;->column:I

    .line 5
    iput p3, p0, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;->rowNum:I

    .line 6
    iput p4, p0, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;->columnNum:I

    .line 7
    iput-object p5, p0, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;->key:Ljava/lang/String;

    .line 8
    iput p6, p0, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;->code:I

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
    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IIIILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;->code:I

    .line 2
    .line 3
    return v0
.end method

.method public getColumn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;->column:I

    .line 2
    .line 3
    return v0
.end method

.method public getColumnNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;->columnNum:I

    .line 2
    .line 3
    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRow()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;->row:I

    .line 2
    .line 3
    return v0
.end method

.method public getRowNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;->rowNum:I

    .line 2
    .line 3
    return v0
.end method

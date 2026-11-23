.class public Lcom/haima/hmcp/beans/ClipBoardData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLIPBOARD_DATA_CODE:Ljava/lang/String; = "paste"

.field public static final CLIPBOARD_DATA_SIZE:I

.field public static final CLIPBOARD_DATA_TYPE_BASE64:I = 0x1

.field public static final CLIPBOARD_DATA_TYPE_PLAIN:I


# instance fields
.field public code:Ljava/lang/String;

.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/ClipBoardItemData;",
            ">;"
        }
    .end annotation
.end field

.field public dataType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/haima/hmcp/Constants;->CONFIG_CLIPBOARD_DATA_SIZE:I

    .line 2
    .line 3
    sput v0, Lcom/haima/hmcp/beans/ClipBoardData;->CLIPBOARD_DATA_SIZE:I

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static checkDataSize(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/ClipBoardItemData;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/haima/hmcp/beans/ClipBoardItemData;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, v1, Lcom/haima/hmcp/beans/ClipBoardItemData;->itemData:Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    sget v2, Lcom/haima/hmcp/beans/ClipBoardData;->CLIPBOARD_DATA_SIZE:I

    .line 32
    .line 33
    if-le v1, v2, :cond_1

    .line 34
    .line 35
    return v0

    .line 36
    :cond_2
    const/4 p0, 0x1

    .line 37
    return p0
.end method

.method public static isDataValid(Lcom/haima/hmcp/beans/ClipBoardData;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/haima/hmcp/beans/ClipBoardData;->data:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/haima/hmcp/beans/ClipBoardData;->checkDataSize(Ljava/util/List;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    const/4 p0, 0x1

    .line 15
    return p0
.end method

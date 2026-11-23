.class public Lcom/join/mgps/dto/DynamicEntranceBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private name:Ljava/lang/String;

.field private tips:Ljava/lang/String;

.field private typeId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "tips",
            "typeId"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/dto/DynamicEntranceBean;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/dto/DynamicEntranceBean;->tips:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/join/mgps/dto/DynamicEntranceBean;->typeId:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DynamicEntranceBean;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTips()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DynamicEntranceBean;->tips:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTypeId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DynamicEntranceBean;->typeId:I

    .line 2
    .line 3
    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DynamicEntranceBean;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tips"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DynamicEntranceBean;->tips:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTypeId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeId"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DynamicEntranceBean;->typeId:I

    .line 2
    .line 3
    return-void
.end method

.class public Lcom/join/mgps/db/tables/RecomDatabeanTable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dataFrom:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private main:Lcom/join/mgps/db/tables/ModleBeanTable;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "modletable"
        foreign = true
        foreignAutoCreate = true
        foreignAutoRefresh = true
    .end annotation
.end field

.field more:Lcom/j256/ormlite/dao/ForeignCollection;
    .annotation runtime Lcom/j256/ormlite/field/ForeignCollectionField;
        eager = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/join/mgps/db/tables/AppMoreBeanTable;",
            ">;"
        }
    .end annotation
.end field

.field sub:Lcom/j256/ormlite/dao/ForeignCollection;
    .annotation runtime Lcom/j256/ormlite/field/ForeignCollectionField;
        eager = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/join/mgps/db/tables/AppBeanMainTable;",
            ">;"
        }
    .end annotation
.end field


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
.method public getDataFrom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/RecomDatabeanTable;->dataFrom:I

    .line 2
    .line 3
    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/RecomDatabeanTable;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public getMain()Lcom/join/mgps/db/tables/ModleBeanTable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/RecomDatabeanTable;->main:Lcom/join/mgps/db/tables/ModleBeanTable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMore()Lcom/j256/ormlite/dao/ForeignCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/join/mgps/db/tables/AppMoreBeanTable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/RecomDatabeanTable;->more:Lcom/j256/ormlite/dao/ForeignCollection;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSub()Lcom/j256/ormlite/dao/ForeignCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/join/mgps/db/tables/AppBeanMainTable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/RecomDatabeanTable;->sub:Lcom/j256/ormlite/dao/ForeignCollection;

    .line 2
    .line 3
    return-object v0
.end method

.method public setDataFrom(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataFrom"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/RecomDatabeanTable;->dataFrom:I

    .line 2
    .line 3
    return-void
.end method

.method public setId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/RecomDatabeanTable;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public setMain(Lcom/join/mgps/db/tables/ModleBeanTable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "main"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/RecomDatabeanTable;->main:Lcom/join/mgps/db/tables/ModleBeanTable;

    .line 2
    .line 3
    return-void
.end method

.method public setMore(Lcom/j256/ormlite/dao/ForeignCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "more"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/join/mgps/db/tables/AppMoreBeanTable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/RecomDatabeanTable;->more:Lcom/j256/ormlite/dao/ForeignCollection;

    .line 2
    .line 3
    return-void
.end method

.method public setSub(Lcom/j256/ormlite/dao/ForeignCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sub"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/join/mgps/db/tables/AppBeanMainTable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/RecomDatabeanTable;->sub:Lcom/j256/ormlite/dao/ForeignCollection;

    .line 2
    .line 3
    return-void
.end method

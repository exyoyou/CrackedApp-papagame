.class public Lcom/join/mgps/db/tables/UserLocalRecordTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "user_local_record"
.end annotation


# instance fields
.field private bizType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
        index = true
        uniqueCombo = true
    .end annotation
.end field

.field private createdAt:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private extraKey:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
        uniqueCombo = true
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
        generatedId = true
    .end annotation
.end field

.field private intVal1:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private longVal1:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private longVal2:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private payload:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private scopeKey:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
        uniqueCombo = true
    .end annotation
.end field

.field private strVal1:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private uid:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
        index = true
        uniqueCombo = true
    .end annotation
.end field

.field private updatedAt:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->bizType:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->uid:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->scopeKey:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->extraKey:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->payload:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->strVal1:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getBizType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->bizType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCreatedAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->createdAt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getExtraKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->extraKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public getIntVal1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->intVal1:I

    .line 2
    .line 3
    return v0
.end method

.method public getLongVal1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->longVal1:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLongVal2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->longVal2:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->payload:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScopeKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->scopeKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStrVal1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->strVal1:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUpdatedAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->updatedAt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bizType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->bizType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCreatedAt(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "createdAt"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->createdAt:J

    .line 2
    .line 3
    return-void
.end method

.method public setExtraKey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraKey"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->extraKey:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public setIntVal1(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intVal1"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->intVal1:I

    .line 2
    .line 3
    return-void
.end method

.method public setLongVal1(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "longVal1"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->longVal1:J

    .line 2
    .line 3
    return-void
.end method

.method public setLongVal2(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "longVal2"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->longVal2:J

    .line 2
    .line 3
    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "payload"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->payload:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setScopeKey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scopeKey"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->scopeKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setStrVal1(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strVal1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->strVal1:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUpdatedAt(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updatedAt"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/db/tables/UserLocalRecordTable;->updatedAt:J

    .line 2
    .line 3
    return-void
.end method

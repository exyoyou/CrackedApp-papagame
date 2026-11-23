.class public Lcom/join/mgps/dto/ClassifyGameBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private type:I

.field private type_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "type_id"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/ClassifyGameBean;->type:I

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/ClassifyGameBean;->type_id:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ClassifyGameBean;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public getType_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ClassifyGameBean;->type_id:I

    .line 2
    .line 3
    return v0
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ClassifyGameBean;->type:I

    .line 2
    .line 3
    return-void
.end method

.method public setType_id(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type_id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ClassifyGameBean;->type_id:I

    .line 2
    .line 3
    return-void
.end method

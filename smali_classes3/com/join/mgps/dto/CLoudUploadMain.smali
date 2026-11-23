.class public Lcom/join/mgps/dto/CLoudUploadMain;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private code:I

.field private data_info:Lcom/join/mgps/dto/CloudUploadDatainfo;

.field private msg:Ljava/lang/String;

.field private succ:I


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
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CLoudUploadMain;->code:I

    .line 2
    .line 3
    return v0
.end method

.method public getData_info()Lcom/join/mgps/dto/CloudUploadDatainfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CLoudUploadMain;->data_info:Lcom/join/mgps/dto/CloudUploadDatainfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CLoudUploadMain;->msg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSucc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CLoudUploadMain;->succ:I

    .line 2
    .line 3
    return v0
.end method

.method public setCode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CLoudUploadMain;->code:I

    .line 2
    .line 3
    return-void
.end method

.method public setData_info(Lcom/join/mgps/dto/CloudUploadDatainfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CLoudUploadMain;->data_info:Lcom/join/mgps/dto/CloudUploadDatainfo;

    .line 2
    .line 3
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CLoudUploadMain;->msg:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSucc(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "succ"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CLoudUploadMain;->succ:I

    .line 2
    .line 3
    return-void
.end method

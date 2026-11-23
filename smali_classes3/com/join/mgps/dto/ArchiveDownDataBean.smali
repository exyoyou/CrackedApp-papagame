.class public Lcom/join/mgps/dto/ArchiveDownDataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/ArchiveDownDataBean$DataInfoBean;
    }
.end annotation


# instance fields
.field private code:I

.field private data_info:Lcom/join/mgps/dto/ArchiveDownDataBean$DataInfoBean;

.field private isOpenCheck:Z

.field private msg:Ljava/lang/String;

.field private succ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/dto/ArchiveDownDataBean;->isOpenCheck:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArchiveDownDataBean;->code:I

    .line 2
    .line 3
    return v0
.end method

.method public getData_info()Lcom/join/mgps/dto/ArchiveDownDataBean$DataInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArchiveDownDataBean;->data_info:Lcom/join/mgps/dto/ArchiveDownDataBean$DataInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArchiveDownDataBean;->msg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSucc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArchiveDownDataBean;->succ:I

    .line 2
    .line 3
    return v0
.end method

.method public isOpenCheck()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ArchiveDownDataBean;->isOpenCheck:Z

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
    iput p1, p0, Lcom/join/mgps/dto/ArchiveDownDataBean;->code:I

    .line 2
    .line 3
    return-void
.end method

.method public setData_info(Lcom/join/mgps/dto/ArchiveDownDataBean$DataInfoBean;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/ArchiveDownDataBean;->data_info:Lcom/join/mgps/dto/ArchiveDownDataBean$DataInfoBean;

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
    iput-object p1, p0, Lcom/join/mgps/dto/ArchiveDownDataBean;->msg:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOpenCheck(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "openCheck"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ArchiveDownDataBean;->isOpenCheck:Z

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
    iput p1, p0, Lcom/join/mgps/dto/ArchiveDownDataBean;->succ:I

    .line 2
    .line 3
    return-void
.end method

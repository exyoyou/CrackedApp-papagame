.class public Lcom/join/mgps/dto/UploadDialogBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private code:I

.field private isSelect:Ljava/lang/Boolean;

.field private name:Ljava/lang/String;


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
    iget v0, p0, Lcom/join/mgps/dto/UploadDialogBean;->code:I

    .line 2
    .line 3
    return v0
.end method

.method public getIsSelect()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UploadDialogBean;->isSelect:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UploadDialogBean;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
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
    iput p1, p0, Lcom/join/mgps/dto/UploadDialogBean;->code:I

    .line 2
    .line 3
    return-void
.end method

.method public setIsSelect(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSelect"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UploadDialogBean;->isSelect:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
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
    iput-object p1, p0, Lcom/join/mgps/dto/UploadDialogBean;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

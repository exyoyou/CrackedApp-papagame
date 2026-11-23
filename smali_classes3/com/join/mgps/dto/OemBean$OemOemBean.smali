.class public Lcom/join/mgps/dto/OemBean$OemOemBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/OemBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OemOemBean"
.end annotation


# instance fields
.field private cdk_code:Ljava/lang/String;

.field private cdk_id:Ljava/lang/String;

.field private expire:Z

.field private oem_end_time:Ljava/lang/String;

.field private oem_icon:Ljava/lang/String;

.field private oem_id:Ljava/lang/String;

.field private oem_name:Ljava/lang/String;

.field private oem_title:Ljava/lang/String;

.field private oem_type:Ljava/lang/String;

.field private receive:Z

.field private surplus_count:Ljava/lang/String;


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
.method public getCdk_code()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OemBean$OemOemBean;->cdk_code:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCdk_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OemBean$OemOemBean;->cdk_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOemId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OemBean$OemOemBean;->oem_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOem_end_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OemBean$OemOemBean;->oem_end_time:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOem_icon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OemBean$OemOemBean;->oem_icon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOem_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OemBean$OemOemBean;->oem_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOem_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OemBean$OemOemBean;->oem_title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOem_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OemBean$OemOemBean;->oem_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSurplus_amount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OemBean$OemOemBean;->surplus_count:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isExpire()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/OemBean$OemOemBean;->expire:Z

    .line 2
    .line 3
    return v0
.end method

.method public isReceive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/OemBean$OemOemBean;->receive:Z

    .line 2
    .line 3
    return v0
.end method

.method public setCdk_code(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cdk_code"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OemBean$OemOemBean;->cdk_code:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCdk_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cdk_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OemBean$OemOemBean;->cdk_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExpire(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expire"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/OemBean$OemOemBean;->expire:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOemId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oemId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OemBean$OemOemBean;->oem_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOem_end_time(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oem_end_time"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OemBean$OemOemBean;->oem_end_time:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOem_icon(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oem_icon"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OemBean$OemOemBean;->oem_icon:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOem_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oem_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OemBean$OemOemBean;->oem_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOem_title(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oem_title"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OemBean$OemOemBean;->oem_title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOem_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oem_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OemBean$OemOemBean;->oem_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setReceive(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receive"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/OemBean$OemOemBean;->receive:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSurplus_amount(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surplus_amount"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OemBean$OemOemBean;->surplus_count:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

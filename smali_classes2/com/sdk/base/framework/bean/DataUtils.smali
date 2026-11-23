.class public Lcom/sdk/base/framework/bean/DataUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdk/base/framework/bean/DataUtils$Step;,
        Lcom/sdk/base/framework/bean/DataUtils$Access_process;,
        Lcom/sdk/base/framework/bean/DataUtils$Err_info;
    }
.end annotation


# instance fields
.field public access_process:Lcom/sdk/base/framework/bean/DataUtils$Access_process;

.field public apikey:Ljava/lang/String;

.field public err_info:Lcom/sdk/base/framework/bean/DataUtils$Err_info;

.field public result:I

.field public ret_code:Ljava/lang/String;

.field public sdk_v:Ljava/lang/String;

.field public seq:Ljava/lang/String;

.field public setTime:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccess_process()Lcom/sdk/base/framework/bean/DataUtils$Access_process;
    .locals 1

    iget-object v0, p0, Lcom/sdk/base/framework/bean/DataUtils;->access_process:Lcom/sdk/base/framework/bean/DataUtils$Access_process;

    return-object v0
.end method

.method public getApikey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/base/framework/bean/DataUtils;->apikey:Ljava/lang/String;

    return-object v0
.end method

.method public getErr_info()Lcom/sdk/base/framework/bean/DataUtils$Err_info;
    .locals 1

    iget-object v0, p0, Lcom/sdk/base/framework/bean/DataUtils;->err_info:Lcom/sdk/base/framework/bean/DataUtils$Err_info;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    iget v0, p0, Lcom/sdk/base/framework/bean/DataUtils;->result:I

    return v0
.end method

.method public getRet_code()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/base/framework/bean/DataUtils;->ret_code:Ljava/lang/String;

    return-object v0
.end method

.method public getSdk_v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/base/framework/bean/DataUtils;->sdk_v:Ljava/lang/String;

    return-object v0
.end method

.method public getSeq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/base/framework/bean/DataUtils;->seq:Ljava/lang/String;

    return-object v0
.end method

.method public getSetTime()I
    .locals 1

    iget v0, p0, Lcom/sdk/base/framework/bean/DataUtils;->setTime:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/sdk/base/framework/bean/DataUtils;->type:I

    return v0
.end method

.method public setAccess_process(Lcom/sdk/base/framework/bean/DataUtils$Access_process;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/base/framework/bean/DataUtils;->access_process:Lcom/sdk/base/framework/bean/DataUtils$Access_process;

    return-void
.end method

.method public setApikey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/base/framework/bean/DataUtils;->apikey:Ljava/lang/String;

    return-void
.end method

.method public setErr_info(Lcom/sdk/base/framework/bean/DataUtils$Err_info;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/base/framework/bean/DataUtils;->err_info:Lcom/sdk/base/framework/bean/DataUtils$Err_info;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    iput p1, p0, Lcom/sdk/base/framework/bean/DataUtils;->result:I

    return-void
.end method

.method public setRet_code(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/base/framework/bean/DataUtils;->ret_code:Ljava/lang/String;

    return-void
.end method

.method public setSdk_v(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/base/framework/bean/DataUtils;->sdk_v:Ljava/lang/String;

    return-void
.end method

.method public setSeq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/base/framework/bean/DataUtils;->seq:Ljava/lang/String;

    return-void
.end method

.method public setSetTime(I)V
    .locals 0

    iput p1, p0, Lcom/sdk/base/framework/bean/DataUtils;->setTime:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/sdk/base/framework/bean/DataUtils;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sdk/base/framework/bean/DataUtils;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sdk/base/framework/bean/DataUtils;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ret_code=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sdk/base/framework/bean/DataUtils;->ret_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", apikey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sdk/base/framework/bean/DataUtils;->apikey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", seq=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sdk/base/framework/bean/DataUtils;->seq:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", setTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sdk/base/framework/bean/DataUtils;->setTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", err_info="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sdk/base/framework/bean/DataUtils;->err_info:Lcom/sdk/base/framework/bean/DataUtils$Err_info;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", sdk_v=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sdk/base/framework/bean/DataUtils;->sdk_v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", access_process="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sdk/base/framework/bean/DataUtils;->access_process:Lcom/sdk/base/framework/bean/DataUtils$Access_process;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

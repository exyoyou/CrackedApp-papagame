.class public Lcom/sdk/base/framework/bean/DataUtils$Access_process;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdk/base/framework/bean/DataUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Access_process"
.end annotation


# instance fields
.field public ifProtal:I

.field public step1:Lcom/sdk/base/framework/bean/DataUtils$Step;

.field public step2:Lcom/sdk/base/framework/bean/DataUtils$Step;

.field public step3:Lcom/sdk/base/framework/bean/DataUtils$Step;

.field public step4:Lcom/sdk/base/framework/bean/DataUtils$Step;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIfProtal()I
    .locals 1

    iget v0, p0, Lcom/sdk/base/framework/bean/DataUtils$Access_process;->ifProtal:I

    return v0
.end method

.method public getStep1()Lcom/sdk/base/framework/bean/DataUtils$Step;
    .locals 1

    iget-object v0, p0, Lcom/sdk/base/framework/bean/DataUtils$Access_process;->step1:Lcom/sdk/base/framework/bean/DataUtils$Step;

    return-object v0
.end method

.method public getStep2()Lcom/sdk/base/framework/bean/DataUtils$Step;
    .locals 1

    iget-object v0, p0, Lcom/sdk/base/framework/bean/DataUtils$Access_process;->step2:Lcom/sdk/base/framework/bean/DataUtils$Step;

    return-object v0
.end method

.method public getStep3()Lcom/sdk/base/framework/bean/DataUtils$Step;
    .locals 1

    iget-object v0, p0, Lcom/sdk/base/framework/bean/DataUtils$Access_process;->step3:Lcom/sdk/base/framework/bean/DataUtils$Step;

    return-object v0
.end method

.method public getStep4()Lcom/sdk/base/framework/bean/DataUtils$Step;
    .locals 1

    iget-object v0, p0, Lcom/sdk/base/framework/bean/DataUtils$Access_process;->step4:Lcom/sdk/base/framework/bean/DataUtils$Step;

    return-object v0
.end method

.method public setIfProtal(I)V
    .locals 0

    iput p1, p0, Lcom/sdk/base/framework/bean/DataUtils$Access_process;->ifProtal:I

    return-void
.end method

.method public setStep1(Lcom/sdk/base/framework/bean/DataUtils$Step;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/base/framework/bean/DataUtils$Access_process;->step1:Lcom/sdk/base/framework/bean/DataUtils$Step;

    return-void
.end method

.method public setStep2(Lcom/sdk/base/framework/bean/DataUtils$Step;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/base/framework/bean/DataUtils$Access_process;->step2:Lcom/sdk/base/framework/bean/DataUtils$Step;

    return-void
.end method

.method public setStep3(Lcom/sdk/base/framework/bean/DataUtils$Step;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/base/framework/bean/DataUtils$Access_process;->step3:Lcom/sdk/base/framework/bean/DataUtils$Step;

    return-void
.end method

.method public setStep4(Lcom/sdk/base/framework/bean/DataUtils$Step;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/base/framework/bean/DataUtils$Access_process;->step4:Lcom/sdk/base/framework/bean/DataUtils$Step;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ifProtal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sdk/base/framework/bean/DataUtils$Access_process;->ifProtal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", step1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sdk/base/framework/bean/DataUtils$Access_process;->step1:Lcom/sdk/base/framework/bean/DataUtils$Step;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", step2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sdk/base/framework/bean/DataUtils$Access_process;->step2:Lcom/sdk/base/framework/bean/DataUtils$Step;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", step3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sdk/base/framework/bean/DataUtils$Access_process;->step3:Lcom/sdk/base/framework/bean/DataUtils$Step;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", step4:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sdk/base/framework/bean/DataUtils$Access_process;->step4:Lcom/sdk/base/framework/bean/DataUtils$Step;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

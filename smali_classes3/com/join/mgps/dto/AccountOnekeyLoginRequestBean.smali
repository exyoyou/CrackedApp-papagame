.class public Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean$Params;
    }
.end annotation


# instance fields
.field private deviceId:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private params:Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean$Params;

.field private provider:Ljava/lang/String;

.field private version:Ljava/lang/String;


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
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->deviceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->mobile:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParams()Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean$Params;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->params:Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean$Params;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParamsMap()Lorg/springframework/util/LinkedMultiValueMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/springframework/util/LinkedMultiValueMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "deviceId"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->deviceId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "mobile"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->mobile:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "provider"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->provider:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const-string v1, "version"

    .line 28
    .line 29
    iget-object v2, p0, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->version:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "params"

    .line 35
    .line 36
    iget-object v2, p0, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->params:Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean$Params;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->provider:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->deviceId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mobile"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->mobile:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setParams(Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean$Params;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->params:Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean$Params;

    .line 2
    .line 3
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->provider:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.class public Lcom/join/mgps/dto/AccountReginBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private account:Ljava/lang/String;

.field private avatar_src:Ljava/lang/String;

.field private code:I

.field private device_id:Ljava/lang/String;

.field private gender:I

.field private mac:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private source:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mobile",
            "password",
            "code",
            "mac",
            "device_id",
            "source",
            "account",
            "nickname",
            "gender",
            "avatar_src"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/AccountReginBean;->mobile:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/AccountReginBean;->password:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/join/mgps/dto/AccountReginBean;->code:I

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/AccountReginBean;->mac:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/AccountReginBean;->device_id:Ljava/lang/String;

    .line 8
    iput p6, p0, Lcom/join/mgps/dto/AccountReginBean;->source:I

    .line 9
    iput-object p7, p0, Lcom/join/mgps/dto/AccountReginBean;->account:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lcom/join/mgps/dto/AccountReginBean;->nickname:Ljava/lang/String;

    .line 11
    iput p9, p0, Lcom/join/mgps/dto/AccountReginBean;->gender:I

    .line 12
    iput-object p10, p0, Lcom/join/mgps/dto/AccountReginBean;->avatar_src:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountReginBean;->account:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAvatar_src()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountReginBean;->avatar_src:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountReginBean;->code:I

    .line 2
    .line 3
    return v0
.end method

.method public getDevice_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountReginBean;->device_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGender()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountReginBean;->gender:I

    .line 2
    .line 3
    return v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountReginBean;->mac:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountReginBean;->mobile:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountReginBean;->nickname:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountReginBean;->password:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountReginBean;->source:I

    .line 2
    .line 3
    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountReginBean;->account:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAvatar_src(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "avatar_src"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountReginBean;->avatar_src:Ljava/lang/String;

    .line 2
    .line 3
    return-void
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
    iput p1, p0, Lcom/join/mgps/dto/AccountReginBean;->code:I

    .line 2
    .line 3
    return-void
.end method

.method public setDevice_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountReginBean;->device_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGender(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gender"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountReginBean;->gender:I

    .line 2
    .line 3
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mac"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountReginBean;->mac:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AccountReginBean;->mobile:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nickname"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountReginBean;->nickname:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "password"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountReginBean;->password:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSource(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountReginBean;->source:I

    .line 2
    .line 3
    return-void
.end method

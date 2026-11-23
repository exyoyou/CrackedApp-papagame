.class public Lcom/join/mgps/dto/RequestUserCenterArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private is_vip:I

.field private token:Ljava/lang/String;

.field private uid:I

.field private userToken:Ljava/lang/String;

.field private vip:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "token",
            "is_vip"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/join/mgps/dto/RequestUserCenterArgs;->uid:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/dto/RequestUserCenterArgs;->token:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/join/mgps/dto/RequestUserCenterArgs;->userToken:Ljava/lang/String;

    .line 9
    .line 10
    iput p3, p0, Lcom/join/mgps/dto/RequestUserCenterArgs;->is_vip:I

    .line 11
    .line 12
    iput p3, p0, Lcom/join/mgps/dto/RequestUserCenterArgs;->vip:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getIs_vip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestUserCenterArgs;->is_vip:I

    .line 2
    .line 3
    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestUserCenterArgs;->token:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestUserCenterArgs;->uid:I

    .line 2
    .line 3
    return v0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestUserCenterArgs;->userToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestUserCenterArgs;->vip:I

    .line 2
    .line 3
    return v0
.end method

.method public setIs_vip(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_vip"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestUserCenterArgs;->is_vip:I

    .line 2
    .line 3
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestUserCenterArgs;->token:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUid(I)V
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
    iput p1, p0, Lcom/join/mgps/dto/RequestUserCenterArgs;->uid:I

    .line 2
    .line 3
    return-void
.end method

.method public setUserToken(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userToken"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestUserCenterArgs;->userToken:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVip(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vip"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestUserCenterArgs;->vip:I

    .line 2
    .line 3
    return-void
.end method

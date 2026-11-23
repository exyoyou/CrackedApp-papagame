.class public Lcom/join/mgps/dto/RequestOnlineCouponArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private locType:I

.field private uid:I

.field private userToken:Ljava/lang/String;

.field private userType:I


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
.method public getLocType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestOnlineCouponArgs;->locType:I

    .line 2
    .line 3
    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestOnlineCouponArgs;->uid:I

    .line 2
    .line 3
    return v0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestOnlineCouponArgs;->userToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestOnlineCouponArgs;->userType:I

    .line 2
    .line 3
    return v0
.end method

.method public setLocType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestOnlineCouponArgs;->locType:I

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
    iput p1, p0, Lcom/join/mgps/dto/RequestOnlineCouponArgs;->uid:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/RequestOnlineCouponArgs;->userToken:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUserType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestOnlineCouponArgs;->userType:I

    .line 2
    .line 3
    return-void
.end method

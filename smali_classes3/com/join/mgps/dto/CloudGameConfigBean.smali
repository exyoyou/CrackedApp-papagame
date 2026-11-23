.class public Lcom/join/mgps/dto/CloudGameConfigBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private banner:Lcom/join/mgps/dto/CloudBannerBean;

.field private free_time:I

.field private sign_in_time:I

.field private total_sign_in_time:I


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
.method public getBanner()Lcom/join/mgps/dto/CloudBannerBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudGameConfigBean;->banner:Lcom/join/mgps/dto/CloudBannerBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFree_time()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CloudGameConfigBean;->free_time:I

    .line 2
    .line 3
    return v0
.end method

.method public getSign_in_time()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CloudGameConfigBean;->sign_in_time:I

    .line 2
    .line 3
    return v0
.end method

.method public getTotal_sign_in_time()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CloudGameConfigBean;->total_sign_in_time:I

    .line 2
    .line 3
    return v0
.end method

.method public setBanner(Lcom/join/mgps/dto/CloudBannerBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "banner"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudGameConfigBean;->banner:Lcom/join/mgps/dto/CloudBannerBean;

    .line 2
    .line 3
    return-void
.end method

.method public setFree_time(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "free_time"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CloudGameConfigBean;->free_time:I

    .line 2
    .line 3
    return-void
.end method

.method public setSign_in_time(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sign_in_time"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CloudGameConfigBean;->sign_in_time:I

    .line 2
    .line 3
    return-void
.end method

.method public setTotal_sign_in_time(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "total_sign_in_time"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CloudGameConfigBean;->total_sign_in_time:I

    .line 2
    .line 3
    return-void
.end method

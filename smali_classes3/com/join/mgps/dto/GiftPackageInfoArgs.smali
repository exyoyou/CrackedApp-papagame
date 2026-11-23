.class public Lcom/join/mgps/dto/GiftPackageInfoArgs;
.super Lcom/join/mgps/dto/BaseDto;
.source "SourceFile"


# instance fields
.field private gift_package_id:I

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "gift_package_id"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/GiftPackageInfoArgs;->uid:I

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/GiftPackageInfoArgs;->gift_package_id:I

    return-void
.end method


# virtual methods
.method public getGift_package_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GiftPackageInfoArgs;->gift_package_id:I

    .line 2
    .line 3
    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GiftPackageInfoArgs;->uid:I

    .line 2
    .line 3
    return v0
.end method

.method public setGift_package_id(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gift_package_id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GiftPackageInfoArgs;->gift_package_id:I

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
    iput p1, p0, Lcom/join/mgps/dto/GiftPackageInfoArgs;->uid:I

    .line 2
    .line 3
    return-void
.end method

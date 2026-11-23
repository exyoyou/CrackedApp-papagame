.class public Lcom/join/mgps/dto/BaiduAdDataMain;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ad_id:Ljava/lang/String;

.field private type_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type_id",
            "ad_id"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/BaiduAdDataMain;->type_id:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/BaiduAdDataMain;->ad_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAd_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BaiduAdDataMain;->ad_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/BaiduAdDataMain;->type_id:I

    .line 2
    .line 3
    return v0
.end method

.method public setAd_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BaiduAdDataMain;->ad_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setType_id(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type_id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/BaiduAdDataMain;->type_id:I

    .line 2
    .line 3
    return-void
.end method

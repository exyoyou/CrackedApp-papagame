.class public Lcom/join/mgps/dto/ConfigMain;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ad_position:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BaiduAdDataMain;",
            ">;"
        }
    .end annotation
.end field

.field private every_day_login:Lcom/join/mgps/dto/EverdayLogin;


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
.method public getAd_position()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BaiduAdDataMain;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ConfigMain;->ad_position:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEvery_day_login()Lcom/join/mgps/dto/EverdayLogin;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ConfigMain;->every_day_login:Lcom/join/mgps/dto/EverdayLogin;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAd_position(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad_position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BaiduAdDataMain;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ConfigMain;->ad_position:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setEvery_day_login(Lcom/join/mgps/dto/EverdayLogin;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "every_day_login"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ConfigMain;->every_day_login:Lcom/join/mgps/dto/EverdayLogin;

    .line 2
    .line 3
    return-void
.end method

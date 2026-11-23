.class public Lcom/join/mgps/dto/FirstScreenAdDtoData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private th_ad_switch:Lcom/join/mgps/dto/ThAdSwitchDataBean;

.field private wf_ad_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ShowViewDataBean;",
            ">;"
        }
    .end annotation
.end field


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
.method public getTh_ad_switch()Lcom/join/mgps/dto/ThAdSwitchDataBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FirstScreenAdDtoData;->th_ad_switch:Lcom/join/mgps/dto/ThAdSwitchDataBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWf_ad_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ShowViewDataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FirstScreenAdDtoData;->wf_ad_list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public setTh_ad_switch(Lcom/join/mgps/dto/ThAdSwitchDataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "th_ad_switch"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FirstScreenAdDtoData;->th_ad_switch:Lcom/join/mgps/dto/ThAdSwitchDataBean;

    .line 2
    .line 3
    return-void
.end method

.method public setWf_ad_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wf_ad_list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ShowViewDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FirstScreenAdDtoData;->wf_ad_list:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

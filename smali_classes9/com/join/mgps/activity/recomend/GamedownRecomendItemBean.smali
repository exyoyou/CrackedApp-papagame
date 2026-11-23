.class public Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;
.super Lcom/join/mgps/dto/CollectionBeanSub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean$RecContext;
    }
.end annotation


# instance fields
.field hasSendData:Z

.field private rec_context:Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean$RecContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/CollectionBeanSub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;->hasSendData:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getRec_context()Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean$RecContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;->rec_context:Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean$RecContext;

    .line 2
    .line 3
    return-object v0
.end method

.method public isHasSendData()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;->hasSendData:Z

    .line 2
    .line 3
    return v0
.end method

.method public setHasSendData(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasSendData"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;->hasSendData:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRec_context(Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean$RecContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rec_context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;->rec_context:Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean$RecContext;

    .line 2
    .line 3
    return-void
.end method

.class public Lcom/join/mgps/dto/ArenaAdData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private c_has_not_read:Z

.field private l_has_not_read:Z

.field private popup_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ArenaPopupInfoBean;",
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
.method public getPopup_info()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ArenaPopupInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaAdData;->popup_info:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public isC_has_not_read()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ArenaAdData;->c_has_not_read:Z

    .line 2
    .line 3
    return v0
.end method

.method public isL_has_not_read()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ArenaAdData;->l_has_not_read:Z

    .line 2
    .line 3
    return v0
.end method

.method public setC_has_not_read(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c_has_not_read"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ArenaAdData;->c_has_not_read:Z

    .line 2
    .line 3
    return-void
.end method

.method public setL_has_not_read(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l_has_not_read"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ArenaAdData;->l_has_not_read:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPopup_info(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "popup_info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ArenaPopupInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaAdData;->popup_info:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

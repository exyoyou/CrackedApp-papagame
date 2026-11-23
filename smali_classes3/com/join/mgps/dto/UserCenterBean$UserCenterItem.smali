.class public Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/UserCenterBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserCenterItem"
.end annotation


# instance fields
.field private extBean:Lcom/join/mgps/dto/ExtBean;

.field private isEmpty:Z

.field private isPlaceHolder:Z

.field private main:Lcom/join/mgps/dto/UserCenterItemBean;

.field private sub:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/JumpInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private unReadCount:I


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
.method public getExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMain()Lcom/join/mgps/dto/UserCenterItemBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->main:Lcom/join/mgps/dto/UserCenterItemBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSub()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/JumpInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->sub:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUnReadCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->unReadCount:I

    .line 2
    .line 3
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->isEmpty:Z

    .line 2
    .line 3
    return v0
.end method

.method public isPlaceHolder()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->isPlaceHolder:Z

    .line 2
    .line 3
    return v0
.end method

.method public setEmpty(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "empty"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->isEmpty:Z

    .line 2
    .line 3
    return-void
.end method

.method public setExtBean(Lcom/join/mgps/dto/ExtBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-void
.end method

.method public setMain(Lcom/join/mgps/dto/UserCenterItemBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "main"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->main:Lcom/join/mgps/dto/UserCenterItemBean;

    .line 2
    .line 3
    return-void
.end method

.method public setPlaceHolder(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placeHolder"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->isPlaceHolder:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSub(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sub"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/JumpInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->sub:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public setUnReadCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unReadCount"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->unReadCount:I

    .line 2
    .line 3
    return-void
.end method

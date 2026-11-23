.class public Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private addTime:Ljava/lang/String;

.field private describe:Ljava/lang/String;

.field private id:I

.field private nickname:Ljava/lang/String;

.field private picPath:Ljava/lang/String;

.field private smallPicPath:Ljava/lang/String;


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
.method public getAddTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;->addTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDescribe()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;->describe:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;->nickname:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPicPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;->picPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSmallPicPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;->smallPicPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAddTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addTime"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;->addTime:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDescribe(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "describe"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;->describe:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nickname"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;->nickname:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPicPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "picPath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;->picPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSmallPicPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "smallPicPath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;->smallPicPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.class public Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:I

.field private picCount:I

.field private picPath:Ljava/lang/String;

.field private title:Ljava/lang/String;


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
.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public getPicCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;->picCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getPicPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;->picPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
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
    iput p1, p0, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public setPicCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "picCount"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;->picCount:I

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
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;->picPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.class public Lcom/join/mgps/activity/vipzone/bean/SpecialTag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field id:I

.field isselected:Z

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->id:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->isselected:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isIsselected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->isselected:Z

    .line 2
    .line 3
    return v0
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
    iput p1, p0, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public setIsselected(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isselected"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->isselected:Z

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
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

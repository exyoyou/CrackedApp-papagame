.class public Lcom/join/mgps/dto/ModFeedbackBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private btn_title:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private show_switch:I

.field private status:Z

.field private title:Ljava/lang/String;

.field private wx_num:Ljava/lang/String;


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
.method public getBtn_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModFeedbackBean;->btn_title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModFeedbackBean;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShow_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ModFeedbackBean;->show_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModFeedbackBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWx_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModFeedbackBean;->wx_num:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ModFeedbackBean;->status:Z

    .line 2
    .line 3
    return v0
.end method

.method public setBtn_title(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "btn_title"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModFeedbackBean;->btn_title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModFeedbackBean;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setShow_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ModFeedbackBean;->show_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setStatus(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ModFeedbackBean;->status:Z

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
    iput-object p1, p0, Lcom/join/mgps/dto/ModFeedbackBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setWx_num(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wx_num"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModFeedbackBean;->wx_num:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.class public Lcom/join/mgps/dto/BtGameBenefitBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private default_sub_title:Ljava/lang/String;

.field private exist:Z

.field private jump_url:Ljava/lang/String;

.field private sub_title:Ljava/lang/String;

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
.method public getDefault_sub_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BtGameBenefitBean;->default_sub_title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJump_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BtGameBenefitBean;->jump_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSub_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BtGameBenefitBean;->sub_title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BtGameBenefitBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isExist()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/BtGameBenefitBean;->exist:Z

    .line 2
    .line 3
    return v0
.end method

.method public setDefault_sub_title(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "default_sub_title"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BtGameBenefitBean;->default_sub_title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExist(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exist"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/BtGameBenefitBean;->exist:Z

    .line 2
    .line 3
    return-void
.end method

.method public setJump_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jump_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BtGameBenefitBean;->jump_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSub_title(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sub_title"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BtGameBenefitBean;->sub_title:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/BtGameBenefitBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

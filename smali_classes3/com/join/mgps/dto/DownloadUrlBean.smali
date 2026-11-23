.class public Lcom/join/mgps/dto/DownloadUrlBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private down_source_name:Ljava/lang/String;

.field private down_source_url:Ljava/lang/String;

.field private down_url_type:I

.field private is_confirm:I


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
.method public getDown_source_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadUrlBean;->down_source_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDown_source_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadUrlBean;->down_source_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDown_url_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DownloadUrlBean;->down_url_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_confirm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DownloadUrlBean;->is_confirm:I

    .line 2
    .line 3
    return v0
.end method

.method public setDown_source_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "down_source_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadUrlBean;->down_source_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDown_source_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "down_source_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadUrlBean;->down_source_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDown_url_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "down_url_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DownloadUrlBean;->down_url_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setIs_confirm(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_confirm"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DownloadUrlBean;->is_confirm:I

    .line 2
    .line 3
    return-void
.end method

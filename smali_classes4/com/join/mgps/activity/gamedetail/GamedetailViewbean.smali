.class public Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private sub_title:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private videoCover:Ljava/lang/String;

.field private video_url:Ljava/lang/String;


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
.method public getSub_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;->sub_title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoCover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;->videoCover:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideo_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;->video_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
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
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;->sub_title:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoCover(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoCover"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;->videoCover:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVideo_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "video_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;->video_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

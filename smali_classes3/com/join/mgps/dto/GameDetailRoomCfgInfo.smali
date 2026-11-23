.class public Lcom/join/mgps/dto/GameDetailRoomCfgInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private check_point:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetailCheckPoint;",
            ">;"
        }
    .end annotation
.end field

.field private cloud_archive:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetailCloudArchive;",
            ">;"
        }
    .end annotation
.end field

.field private cloud_archive_count:I

.field private golden_finger:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private one_touch_skill:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetailOneTouchSkill;",
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
.method public getCheck_point()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetailCheckPoint;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDetailRoomCfgInfo;->check_point:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCloud_archive()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetailCloudArchive;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDetailRoomCfgInfo;->cloud_archive:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCloud_archive_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameDetailRoomCfgInfo;->cloud_archive_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getGolden_finger()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDetailRoomCfgInfo;->golden_finger:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOne_touch_skill()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetailOneTouchSkill;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDetailRoomCfgInfo;->one_touch_skill:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCheck_point(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "check_point"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetailCheckPoint;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDetailRoomCfgInfo;->check_point:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setCloud_archive(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cloud_archive"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetailCloudArchive;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDetailRoomCfgInfo;->cloud_archive:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setCloud_archive_count(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cloud_archive_count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameDetailRoomCfgInfo;->cloud_archive_count:I

    .line 2
    .line 3
    return-void
.end method

.method public setGolden_finger(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "golden_finger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDetailRoomCfgInfo;->golden_finger:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setOne_touch_skill(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "one_touch_skill"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetailOneTouchSkill;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDetailRoomCfgInfo;->one_touch_skill:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

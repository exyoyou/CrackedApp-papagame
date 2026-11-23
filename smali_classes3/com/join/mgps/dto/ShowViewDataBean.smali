.class public Lcom/join/mgps/dto/ShowViewDataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private begin_times:Ljava/lang/String;

.field private end_times:Ljava/lang/String;

.field private id:I

.field private imagePath:Ljava/lang/String;

.field private isNeedDelt:Z

.field private is_force:Ljava/lang/String;

.field private jump_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SplashIntentBean;",
            ">;"
        }
    .end annotation
.end field

.field private show_time:J

.field private strategy_id:Ljava/lang/String;

.field private strategy_name:Ljava/lang/String;

.field private tag_show:I

.field private up_times:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/dto/ShowViewDataBean;->isNeedDelt:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "strategy_id",
            "strategy_name",
            "up_times",
            "pic_addr",
            "begin_times",
            "end_times",
            "is_force",
            "imagePath",
            "tag_show",
            "isNeedDelt",
            "jump_info",
            "show_time"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SplashIntentBean;",
            ">;J)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->id:I

    .line 5
    iput-object p2, p0, Lcom/join/mgps/dto/ShowViewDataBean;->strategy_id:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/join/mgps/dto/ShowViewDataBean;->strategy_name:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/join/mgps/dto/ShowViewDataBean;->up_times:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/join/mgps/dto/ShowViewDataBean;->begin_times:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/join/mgps/dto/ShowViewDataBean;->end_times:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lcom/join/mgps/dto/ShowViewDataBean;->is_force:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lcom/join/mgps/dto/ShowViewDataBean;->imagePath:Ljava/lang/String;

    .line 12
    iput p10, p0, Lcom/join/mgps/dto/ShowViewDataBean;->tag_show:I

    .line 13
    iput-boolean p11, p0, Lcom/join/mgps/dto/ShowViewDataBean;->isNeedDelt:Z

    .line 14
    iput-object p12, p0, Lcom/join/mgps/dto/ShowViewDataBean;->jump_info:Ljava/util/List;

    .line 15
    iput-wide p13, p0, Lcom/join/mgps/dto/ShowViewDataBean;->show_time:J

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/util/List;JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "strategy_id",
            "strategy_name",
            "up_times",
            "pic_addr",
            "begin_times",
            "end_times",
            "is_force",
            "imagePath",
            "tag_show",
            "isNeedDelt",
            "jump_info",
            "show_time",
            "vedio_url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SplashIntentBean;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->id:I

    .line 18
    iput-object p2, p0, Lcom/join/mgps/dto/ShowViewDataBean;->strategy_id:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/join/mgps/dto/ShowViewDataBean;->strategy_name:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/join/mgps/dto/ShowViewDataBean;->up_times:Ljava/lang/String;

    .line 21
    iput-object p6, p0, Lcom/join/mgps/dto/ShowViewDataBean;->begin_times:Ljava/lang/String;

    .line 22
    iput-object p7, p0, Lcom/join/mgps/dto/ShowViewDataBean;->end_times:Ljava/lang/String;

    .line 23
    iput-object p8, p0, Lcom/join/mgps/dto/ShowViewDataBean;->is_force:Ljava/lang/String;

    .line 24
    iput-object p9, p0, Lcom/join/mgps/dto/ShowViewDataBean;->imagePath:Ljava/lang/String;

    .line 25
    iput p10, p0, Lcom/join/mgps/dto/ShowViewDataBean;->tag_show:I

    .line 26
    iput-boolean p11, p0, Lcom/join/mgps/dto/ShowViewDataBean;->isNeedDelt:Z

    .line 27
    iput-object p12, p0, Lcom/join/mgps/dto/ShowViewDataBean;->jump_info:Ljava/util/List;

    .line 28
    iput-wide p13, p0, Lcom/join/mgps/dto/ShowViewDataBean;->show_time:J

    return-void
.end method


# virtual methods
.method public getBegin_times()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShowViewDataBean;->begin_times:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEnd_times()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShowViewDataBean;->end_times:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ShowViewDataBean;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShowViewDataBean;->imagePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIs_force()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShowViewDataBean;->is_force:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJump_info()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SplashIntentBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShowViewDataBean;->jump_info:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShowVieDatabeanTable()Lcom/join/mgps/db/tables/ShowViewDataBeanTable;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v6, ""

    .line 4
    .line 5
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, v0, Lcom/join/mgps/dto/ShowViewDataBean;->jump_info:Ljava/util/List;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v13

    .line 15
    new-instance v16, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;

    .line 16
    .line 17
    iget v2, v0, Lcom/join/mgps/dto/ShowViewDataBean;->id:I

    .line 18
    .line 19
    iget-object v3, v0, Lcom/join/mgps/dto/ShowViewDataBean;->strategy_id:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v4, v0, Lcom/join/mgps/dto/ShowViewDataBean;->strategy_name:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v5, v0, Lcom/join/mgps/dto/ShowViewDataBean;->up_times:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v7, v0, Lcom/join/mgps/dto/ShowViewDataBean;->begin_times:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v8, v0, Lcom/join/mgps/dto/ShowViewDataBean;->end_times:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v9, v0, Lcom/join/mgps/dto/ShowViewDataBean;->is_force:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v10, v0, Lcom/join/mgps/dto/ShowViewDataBean;->imagePath:Ljava/lang/String;

    .line 32
    .line 33
    iget v11, v0, Lcom/join/mgps/dto/ShowViewDataBean;->tag_show:I

    .line 34
    .line 35
    iget-boolean v12, v0, Lcom/join/mgps/dto/ShowViewDataBean;->isNeedDelt:Z

    .line 36
    .line 37
    iget-wide v14, v0, Lcom/join/mgps/dto/ShowViewDataBean;->show_time:J

    .line 38
    .line 39
    move-object/from16 v1, v16

    .line 40
    .line 41
    invoke-direct/range {v1 .. v15}, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;J)V

    .line 42
    .line 43
    .line 44
    return-object v16
.end method

.method public getShow_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ShowViewDataBean;->show_time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getStrategy_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShowViewDataBean;->strategy_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStrategy_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShowViewDataBean;->strategy_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTag_show()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ShowViewDataBean;->tag_show:I

    .line 2
    .line 3
    return v0
.end method

.method public getUp_times()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShowViewDataBean;->up_times:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isNeedDelt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ShowViewDataBean;->isNeedDelt:Z

    .line 2
    .line 3
    return v0
.end method

.method public setBegin_times(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "begin_times"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->begin_times:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEnd_times(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "end_times"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->end_times:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imagePath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->imagePath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIs_force(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_force"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->is_force:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setJump_info(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jump_info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SplashIntentBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->jump_info:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setNeedDelt(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isNeedDelt"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->isNeedDelt:Z

    .line 2
    .line 3
    return-void
.end method

.method public setShow_time(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show_time"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->show_time:J

    .line 2
    .line 3
    return-void
.end method

.method public setStrategy_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->strategy_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setStrategy_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->strategy_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTag_show(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag_show"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->tag_show:I

    .line 2
    .line 3
    return-void
.end method

.method public setUp_times(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "up_times"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShowViewDataBean;->up_times:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

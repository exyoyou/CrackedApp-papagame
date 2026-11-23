.class public Lcom/join/mgps/db/tables/ShowViewDataBeanTable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private begin_times:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private end_times:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private imagePath:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isNeedDelt:Z

.field private is_default:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private jump_info:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private pic_addr:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private show_time:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private strategy_id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private strategy_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private tag_show:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private up_times:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->isNeedDelt:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;J)V
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
            "is_default",
            "imagePath",
            "tag_show",
            "isNeedDelt",
            "jump_info",
            "show_time"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->id:I

    .line 5
    iput-object p2, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->strategy_id:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->strategy_name:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->up_times:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->pic_addr:Ljava/lang/String;

    .line 9
    iput-object p6, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->begin_times:Ljava/lang/String;

    .line 10
    iput-object p7, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->end_times:Ljava/lang/String;

    .line 11
    iput-object p8, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->is_default:Ljava/lang/String;

    .line 12
    iput-object p9, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->imagePath:Ljava/lang/String;

    .line 13
    iput p10, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->tag_show:I

    .line 14
    iput-boolean p11, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->isNeedDelt:Z

    .line 15
    iput-object p12, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->jump_info:Ljava/lang/String;

    .line 16
    iput-wide p13, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->show_time:J

    return-void
.end method


# virtual methods
.method public getBegin_times()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->begin_times:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEnd_times()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->end_times:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->imagePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIs_default()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->is_default:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJump_info()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->jump_info:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_addr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->pic_addr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShowVieDatabean()Lcom/join/mgps/dto/ShowViewDataBean;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    new-array v7, v0, [Ljava/lang/String;

    .line 5
    .line 6
    new-instance v14, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, v1, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->jump_info:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    .line 20
    .line 21
    iget-object v3, v1, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->jump_info:Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-ge v0, v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    invoke-static {v3}, Lcom/join/mgps/dto/SplashIntentBean;->from(Lorg/json/JSONObject;)Lcom/join/mgps/dto/SplashIntentBean;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :cond_1
    new-instance v0, Lcom/join/mgps/dto/ShowViewDataBean;

    .line 53
    .line 54
    iget v3, v1, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->id:I

    .line 55
    .line 56
    iget-object v4, v1, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->strategy_id:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v5, v1, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->strategy_name:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v6, v1, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->up_times:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v8, v1, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->begin_times:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v9, v1, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->end_times:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v10, v1, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->is_default:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v11, v1, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->imagePath:Ljava/lang/String;

    .line 69
    .line 70
    iget v12, v1, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->tag_show:I

    .line 71
    .line 72
    iget-boolean v13, v1, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->isNeedDelt:Z

    .line 73
    .line 74
    move-object/from16 v16, v14

    .line 75
    .line 76
    iget-wide v14, v1, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->show_time:J

    .line 77
    .line 78
    move-object v2, v0

    .line 79
    move-wide/from16 v17, v14

    .line 80
    .line 81
    move-object/from16 v14, v16

    .line 82
    .line 83
    move-wide/from16 v15, v17

    .line 84
    .line 85
    invoke-direct/range {v2 .. v16}, Lcom/join/mgps/dto/ShowViewDataBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/util/List;J)V

    .line 86
    .line 87
    .line 88
    return-object v0
.end method

.method public getShow_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->show_time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getStrategy_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->strategy_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStrategy_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->strategy_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTag_show()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->tag_show:I

    .line 2
    .line 3
    return v0
.end method

.method public getUp_times()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->up_times:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isNeedDelt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->isNeedDelt:Z

    .line 2
    .line 3
    return v0
.end method

.method public isTag_show()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->tag_show:I

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->begin_times:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->end_times:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->id:I

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->imagePath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIs_default(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_default"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->is_default:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setJump_info(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jump_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->jump_info:Ljava/lang/String;

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
    iput-boolean p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->isNeedDelt:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPic_addr(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pic_addr"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->pic_addr:Ljava/lang/String;

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
    iput-wide p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->show_time:J

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->strategy_id:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->strategy_name:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->tag_show:I

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->up_times:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

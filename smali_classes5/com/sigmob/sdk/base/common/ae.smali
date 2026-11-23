.class Lcom/sigmob/sdk/base/common/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/u;


# static fields
.field public static final a:Ljava/lang/String; = "RewardVideoViewAbilitySession"


# instance fields
.field private b:I

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/base/common/ae;->b:I

    iput v0, p0, Lcom/sigmob/sdk/base/common/ae;->e:I

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millis"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    const-string p1, "0"

    return-object p1

    :cond_0
    div-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic a(ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/Object;)V
    .locals 4

    .line 2
    instance-of v0, p4, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_3

    check-cast p4, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    iget v0, p0, Lcom/sigmob/sdk/base/common/ae;->b:I

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/common/ae;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setVtime(Ljava/lang/String;)V

    iget v0, p0, Lcom/sigmob/sdk/base/common/ae;->d:I

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/common/ae;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setSkip_show_time(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/ae;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setCurrent_time(Ljava/lang/String;)V

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v0, v0, v2

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/ae;->b()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setPlay_process(Ljava/lang/String;)V

    const-string v0, "start"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_scene_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setScene_id(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_scene_desc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setScene_desc(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getBid_token()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setBid_token(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/ae;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setPlay_time(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    iget p3, p0, Lcom/sigmob/sdk/base/common/ae;->e:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const-string p3, "%d"

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setSet_close_time(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/ae;->a()Z

    move-result p1

    const-string p2, "1"

    const-string p3, "0"

    if-eqz p1, :cond_1

    move-object p1, p2

    goto :goto_0

    :cond_1
    move-object p1, p3

    :goto_0
    invoke-virtual {p4, p1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setIs_truncation(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/sigmob/sdk/base/common/ae;->c:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, p3

    :goto_1
    invoke-virtual {p4, p2}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setIs_force(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/BaseAdUnit;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adUnit",
            "playHeadMillis",
            "sub",
            "number",
            "event"
        }
    .end annotation

    .line 3
    const-string v0, "play"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sigmob/sdk/base/common/ae;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object p3

    const-string v0, "_ENDTIME_"

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/base/common/ae;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "_PROGRESS_"

    invoke-virtual {p3, p2, p4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p5}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adUnit",
            "event",
            "playHeadMillis",
            "sub"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/sigmob/sdk/base/common/n0;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/sigmob/sdk/base/common/n0;-><init>(Lcom/sigmob/sdk/base/common/ae;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {p2, p4, p1, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method private static synthetic a(Ljava/util/HashMap;Ljava/lang/Object;)V
    .locals 1

    .line 5
    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/e;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private a()Z
    .locals 2

    .line 6
    iget v0, p0, Lcom/sigmob/sdk/base/common/ae;->e:I

    if-lez v0, :cond_0

    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/sigmob/sdk/base/common/ae;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private b()I
    .locals 3

    .line 2
    iget v0, p0, Lcom/sigmob/sdk/base/common/ae;->e:I

    if-lez v0, :cond_0

    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Lcom/sigmob/sdk/base/common/ae;->b:I

    if-ge v1, v2, :cond_0

    mul-int/lit16 v0, v0, 0x3e8

    return v0

    :cond_0
    iget v0, p0, Lcom/sigmob/sdk/base/common/ae;->b:I

    return v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millis"
        }
    .end annotation

    .line 3
    if-nez p1, :cond_0

    const-string p1, "0"

    return-object p1

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    int-to-float p1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "%.2f"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adUnit",
            "event",
            "playHeadMillis"
        }
    .end annotation

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sigmob/sdk/base/common/ae;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/HashMap;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/common/ae;->a(Ljava/util/HashMap;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lcom/sigmob/sdk/base/common/ae;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sigmob/sdk/base/common/ae;->a(ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adUnit"
        }
    .end annotation

    .line 7
    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adUnit",
            "duration",
            "end_time"
        }
    .end annotation

    .line 8
    iput p2, p0, Lcom/sigmob/sdk/base/common/ae;->b:I

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndTime()I

    move-result p2

    iput p2, p0, Lcom/sigmob/sdk/base/common/ae;->e:I

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object p1

    iget p2, p0, Lcom/sigmob/sdk/base/common/ae;->b:I

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/base/common/ae;->a(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "_VIDEOTIME_"

    invoke-virtual {p1, p3, p2}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)Z
    .locals 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adUnit",
            "event",
            "playheadMillis"
        }
    .end annotation

    .line 9
    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v6, p2

    move/from16 v3, p3

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "click"

    const-string v4, "show"

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    :try_start_1
    const-string v1, "play_complete"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "companion_click"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "ad_vclose"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "play_two_quarters"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x15

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "full_video_click"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "start"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_1

    :sswitch_6
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "skip"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_1

    :sswitch_8
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "mute"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "rotation"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "play_three_quarters"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x16

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "ad_video_start"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "fourElements_close"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "closecard_close"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "complete"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "click_skip"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x18

    goto :goto_1

    :sswitch_11
    const-string v1, "unmute"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    goto :goto_1

    :sswitch_12
    const-string v1, "reward"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto :goto_1

    :sswitch_13
    const-string v1, "fourElements_show"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_14
    const-string v1, "finish"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto :goto_1

    :sswitch_15
    const-string v1, "show_skip"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_16
    const-string v1, "ad_motion_click"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_17
    const-string v1, "play_quarter"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    goto :goto_1

    :sswitch_18
    const-string v1, "closecard_show"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v5, "close"

    const-string v9, "fourElements"

    const-string v10, "closecard"

    const-string v11, "silent"

    const-string v13, "_CLICKSCENE_"

    const-string v14, "_FINALCLICK_"

    const-string v15, "_CLICKAREA_"

    const-string v8, "_TEMPLATE_"

    const-string v12, "_AH_"

    move-object/from16 v17, v10

    const-string v10, "_AW_"

    move-object/from16 v18, v4

    const-string v4, "_AY_"

    move-object/from16 v19, v5

    const-string v5, "_AX_"

    move-object/from16 v20, v9

    const-string v9, "1"

    move-object/from16 v21, v2

    const-string v2, "_ENDTIME_"

    move-object/from16 v22, v14

    const-string v14, "_PROGRESS_"

    move-object/from16 v23, v13

    const-string v13, "0"

    packed-switch v1, :pswitch_data_0

    move-object v4, v6

    :try_start_2
    invoke-direct/range {p0 .. p3}, Lcom/sigmob/sdk/base/common/ae;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)V

    goto/16 :goto_14

    :pswitch_0
    invoke-direct/range {p0 .. p3}, Lcom/sigmob/sdk/base/common/ae;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)V

    goto/16 :goto_1a

    :pswitch_1
    const-string v4, "0.85"

    const-string v5, "85"

    :goto_2
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sigmob/sdk/base/common/ae;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_2
    const-string v4, "0.75"

    const-string v5, "75"

    goto :goto_2

    :pswitch_3
    const-string v4, "0.50"

    const-string v5, "50"

    goto :goto_2

    :pswitch_4
    const-string v4, "0.25"

    const-string v5, "25"

    goto :goto_2

    :pswitch_5
    const-string v1, "play"

    invoke-direct {v7, v0, v1, v3, v13}, Lcom/sigmob/sdk/base/common/ae;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_6
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string v2, "screenswitch"

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getRotation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v2, v3, v1}, Lcom/sigmob/sdk/base/common/ae;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_7
    invoke-direct {v7, v0, v11, v3, v13}, Lcom/sigmob/sdk/base/common/ae;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_8
    invoke-direct {v7, v0, v11, v3, v9}, Lcom/sigmob/sdk/base/common/ae;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_9
    const-string v1, "vclose"

    const/4 v2, 0x0

    invoke-direct {v7, v0, v1, v3, v2}, Lcom/sigmob/sdk/base/common/ae;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_a
    if-nez v3, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/sigmob/sdk/base/common/ae;->b()I

    move-result v1

    goto :goto_3

    :cond_1
    move v1, v3

    :goto_3
    invoke-direct {v7, v0, v6, v1}, Lcom/sigmob/sdk/base/common/ae;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v3

    iget v4, v7, Lcom/sigmob/sdk/base/common/ae;->b:I

    if-lez v4, :cond_2

    if-lez v1, :cond_2

    mul-int/lit8 v4, v1, 0x64

    invoke-direct/range {p0 .. p0}, Lcom/sigmob/sdk/base/common/ae;->b()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v14, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    invoke-virtual {v3, v14, v13}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-string v4, "_COMPLETED_"

    invoke-virtual {v3, v4, v9}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_PLAYLASTFRAME_"

    invoke-virtual {v3, v4, v9}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v1}, Lcom/sigmob/sdk/base/common/ae;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-static/range {p1 .. p2}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_b
    if-nez v3, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/sigmob/sdk/base/common/ae;->b()I

    move-result v1

    goto :goto_6

    :cond_3
    move v1, v3

    :goto_6
    invoke-direct {v7, v0, v6, v1}, Lcom/sigmob/sdk/base/common/ae;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)V

    goto/16 :goto_1a

    :pswitch_c
    if-nez v3, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/sigmob/sdk/base/common/ae;->b()I

    move-result v1

    goto :goto_7

    :cond_4
    move v1, v3

    :goto_7
    invoke-direct {v7, v0, v6, v1}, Lcom/sigmob/sdk/base/common/ae;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v3

    invoke-direct {v7, v1}, Lcom/sigmob/sdk/base/common/ae;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "100"

    invoke-virtual {v3, v14, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v1

    const-string v4, "_SHOWSKIPTIME_"

    invoke-direct {v7, v3}, Lcom/sigmob/sdk/base/common/ae;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v7, Lcom/sigmob/sdk/base/common/ae;->b:I

    if-lez v4, :cond_5

    if-lez v3, :cond_5

    mul-int/lit8 v4, v3, 0x64

    invoke-direct/range {p0 .. p0}, Lcom/sigmob/sdk/base/common/ae;->b()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v14, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_5
    invoke-virtual {v1, v14, v13}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    invoke-direct {v7, v3}, Lcom/sigmob/sdk/base/common/ae;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_VIDEOTIME_"

    iget v3, v7, Lcom/sigmob/sdk/base/common/ae;->b:I

    invoke-direct {v7, v3}, Lcom/sigmob/sdk/base/common/ae;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_e
    if-nez v3, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/sigmob/sdk/base/common/ae;->b()I

    move-result v1

    goto :goto_9

    :cond_6
    move v1, v3

    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v11

    iget-boolean v11, v11, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    if-eqz v11, :cond_7

    goto :goto_a

    :cond_7
    move-object v9, v13

    :goto_a
    invoke-virtual {v3, v5, v13}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v13}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealWidthDip()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v10, v5}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealHeightDip()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v12, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTemplateId()I

    move-result v4

    if-lez v4, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTemplateId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v4

    iget-object v4, v4, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    invoke-static {v4}, Lcom/sigmob/sdk/base/utils/t;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v4

    iget-object v4, v4, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v15, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v4

    iget-object v4, v4, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-static {v4}, Lcom/sigmob/sdk/base/utils/t;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v4

    iget-object v4, v4, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v11, v23

    invoke-virtual {v3, v11, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move-object/from16 v4, v22

    invoke-virtual {v3, v4, v9}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v1}, Lcom/sigmob/sdk/base/common/ae;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v7, Lcom/sigmob/sdk/base/common/ae;->b:I

    if-lez v2, :cond_b

    if-lez v1, :cond_b

    mul-int/lit8 v1, v1, 0x64

    invoke-direct/range {p0 .. p0}, Lcom/sigmob/sdk/base/common/ae;->b()I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v14, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_b
    invoke-virtual {v3, v14, v13}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_f
    move-object/from16 v1, v22

    move-object/from16 v11, v23

    if-nez v3, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/sigmob/sdk/base/common/ae;->b()I

    move-result v3

    :cond_c
    move-object/from16 v16, v9

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v9

    iget-boolean v9, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    if-eqz v9, :cond_d

    move-object/from16 v9, v16

    goto :goto_b

    :cond_d
    move-object v9, v13

    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v6

    invoke-virtual {v6, v5, v13}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v4, v13}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealWidthDip()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v10, v5}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealHeightDip()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v12, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTemplateId()I

    move-result v4

    if-lez v4, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTemplateId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v8, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v4

    iget-object v4, v4, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    invoke-static {v4}, Lcom/sigmob/sdk/base/utils/t;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v4

    iget-object v4, v4, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v15, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v4

    iget-object v4, v4, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-static {v4}, Lcom/sigmob/sdk/base/utils/t;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v4

    iget-object v4, v4, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v11, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v6, v1, v9}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v3}, Lcom/sigmob/sdk/base/common/ae;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v7, Lcom/sigmob/sdk/base/common/ae;->b:I

    if-lez v1, :cond_11

    if-lez v3, :cond_11

    mul-int/lit8 v3, v3, 0x64

    invoke-direct/range {p0 .. p0}, Lcom/sigmob/sdk/base/common/ae;->b()I

    move-result v1

    div-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v14, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_11
    invoke-virtual {v6, v14, v13}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    invoke-static/range {p1 .. p2}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_10
    move-object/from16 v16, v9

    move-object/from16 v1, v22

    move-object/from16 v11, v23

    if-nez v3, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/sigmob/sdk/base/common/ae;->b()I

    move-result v3

    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v6

    iget-boolean v9, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    if-eqz v9, :cond_13

    move-object/from16 v9, v16

    goto :goto_d

    :cond_13
    move-object v9, v13

    :goto_d
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v0

    invoke-virtual {v0, v5, v13}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v13}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealWidthDip()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v10, v5}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealHeightDip()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v12, v5}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "-999"

    const-string v10, "5"

    iget-object v12, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v12, "_SLD_"

    if-eqz v10, :cond_14

    :try_start_3
    invoke-virtual {v0, v5, v5, v5, v5}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->updateClickMarco(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    invoke-virtual {v0, v12, v5}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "_TURNX_"

    iget-object v10, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_x:Ljava/lang/String;

    invoke-virtual {v0, v5, v10}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "_TURNY_"

    iget-object v10, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_y:Ljava/lang/String;

    invoke-virtual {v0, v5, v10}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "_TURNZ_"

    iget-object v10, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_z:Ljava/lang/String;

    invoke-virtual {v0, v5, v10}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "_TURNTIME_"

    iget-object v10, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_time:Ljava/lang/String;

    invoke-virtual {v0, v5, v10}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 p2, v4

    goto :goto_e

    :cond_14
    const-string v10, "2"

    move-object/from16 p2, v4

    iget-object v4, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v0, v5, v5, v5, v5}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->updateClickMarco(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    invoke-virtual {v0, v12, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_XMAXACC_"

    iget-object v5, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->x_max_acc:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_YMAXACC_"

    iget-object v5, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->y_max_acc:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_ZMAXACC_"

    iget-object v5, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->z_max_acc:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_15
    iget-object v4, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->down:Lcom/czhj/sdk/common/utils/TouchLocation;

    iget-object v5, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->up:Lcom/czhj/sdk/common/utils/TouchLocation;

    invoke-virtual {v0, v4, v5}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->updateClickMarco(Lcom/czhj/sdk/common/utils/TouchLocation;Lcom/czhj/sdk/common/utils/TouchLocation;)V

    invoke-virtual {v0, v12, v13}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTemplateId()I

    move-result v4

    if-lez v4, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTemplateId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v8, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    iget-object v4, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    invoke-static {v4}, Lcom/sigmob/sdk/base/utils/t;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v15, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    iget-object v4, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-static {v4}, Lcom/sigmob/sdk/base/utils/t;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v11, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    invoke-virtual {v0, v1, v9}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v3}, Lcom/sigmob/sdk/base/common/ae;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v7, Lcom/sigmob/sdk/base/common/ae;->b:I

    if-lez v1, :cond_19

    if-lez v3, :cond_19

    mul-int/lit8 v3, v3, 0x64

    invoke-direct/range {p0 .. p0}, Lcom/sigmob/sdk/base/common/ae;->b()I

    move-result v1

    div-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_19
    invoke-virtual {v0, v14, v13}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    move-object v1, v0

    move-object/from16 v2, v21

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "template_id"

    iget-object v5, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->template_id:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "sld"

    iget-object v5, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "adarea_x"

    invoke-virtual {v3, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "adarea_y"

    invoke-virtual {v3, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "adarea_w"

    invoke-virtual/range {p2 .. p2}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealWidthDip()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "adarea_h"

    invoke-virtual/range {p2 .. p2}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealHeightDip()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "5"

    iget-object v5, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v4, "turn_x"

    iget-object v5, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_x:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "turn_y"

    iget-object v5, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_y:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "turn_z"

    iget-object v5, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_z:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "turn_time"

    iget-object v5, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_time:Ljava/lang/String;

    :goto_10
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_1a
    const-string v4, "2"

    iget-object v5, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "x_max_acc"

    iget-object v5, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->x_max_acc:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "y_max_acc"

    iget-object v5, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->y_max_acc:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "z_max_acc"

    iget-object v5, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->z_max_acc:Ljava/lang/String;

    goto :goto_10

    :cond_1b
    :goto_11
    const-string v4, "click_area"

    iget-object v5, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "click_scene"

    iget-object v5, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "cwidth"

    invoke-virtual/range {p2 .. p2}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealWidthDip()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "cheight"

    invoke-virtual/range {p2 .. p2}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealHeightDip()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "is_final_click"

    invoke-virtual {v3, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "coordinate"

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->getCoordinate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    new-instance v4, Lcom/sigmob/sdk/base/common/o0;

    invoke-direct {v4, v3}, Lcom/sigmob/sdk/base/common/o0;-><init>(Ljava/util/HashMap;)V

    invoke-static {v1, v2, v0, v4}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    goto/16 :goto_1a

    :pswitch_11
    move-object/from16 v16, v9

    move-object/from16 v1, v22

    move-object/from16 v11, v23

    if-nez v3, :cond_1c

    invoke-direct/range {p0 .. p0}, Lcom/sigmob/sdk/base/common/ae;->b()I

    move-result v3

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v6

    iget-boolean v6, v6, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    if-eqz v6, :cond_1d

    move-object/from16 v9, v16

    goto :goto_12

    :cond_1d
    move-object v9, v13

    :goto_12
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v6

    invoke-virtual {v6, v5, v13}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v4, v13}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealWidthDip()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v10, v5}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealHeightDip()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v12, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTemplateId()I

    move-result v4

    if-lez v4, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTemplateId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v8, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v4

    iget-object v4, v4, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    invoke-static {v4}, Lcom/sigmob/sdk/base/utils/t;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v4

    iget-object v4, v4, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v15, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v4

    iget-object v4, v4, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-static {v4}, Lcom/sigmob/sdk/base/utils/t;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v4

    iget-object v4, v4, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v11, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    invoke-virtual {v6, v1, v9}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v3}, Lcom/sigmob/sdk/base/common/ae;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v7, Lcom/sigmob/sdk/base/common/ae;->b:I

    if-lez v1, :cond_21

    if-lez v3, :cond_21

    mul-int/lit8 v3, v3, 0x64

    invoke-direct/range {p0 .. p0}, Lcom/sigmob/sdk/base/common/ae;->b()I

    move-result v1

    div-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v14, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_21
    invoke-virtual {v6, v14, v13}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :pswitch_12
    if-nez v3, :cond_22

    invoke-direct/range {p0 .. p0}, Lcom/sigmob/sdk/base/common/ae;->b()I

    move-result v1

    goto :goto_13

    :cond_22
    move v1, v3

    :goto_13
    const-string v3, "endcard"

    move-object/from16 v4, p2

    invoke-direct {v7, v0, v3, v1, v4}, Lcom/sigmob/sdk/base/common/ae;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v3

    invoke-direct {v7, v1}, Lcom/sigmob/sdk/base/common/ae;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v7, Lcom/sigmob/sdk/base/common/ae;->b:I

    if-lez v2, :cond_23

    if-lez v1, :cond_23

    mul-int/lit8 v1, v1, 0x64

    invoke-direct/range {p0 .. p0}, Lcom/sigmob/sdk/base/common/ae;->b()I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v14, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_23
    invoke-virtual {v3, v14, v13}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    invoke-static/range {p1 .. p2}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_13
    if-nez v3, :cond_24

    invoke-direct/range {p0 .. p0}, Lcom/sigmob/sdk/base/common/ae;->b()I

    move-result v1

    goto :goto_15

    :cond_24
    move v1, v3

    :goto_15
    move-object/from16 v2, v19

    move-object/from16 v4, v20

    :goto_16
    invoke-direct {v7, v0, v4, v1, v2}, Lcom/sigmob/sdk/base/common/ae;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_14
    move-object/from16 v4, v20

    if-nez v3, :cond_25

    invoke-direct/range {p0 .. p0}, Lcom/sigmob/sdk/base/common/ae;->b()I

    move-result v1

    goto :goto_17

    :cond_25
    move v1, v3

    :goto_17
    move-object/from16 v2, v18

    goto :goto_16

    :pswitch_15
    move-object/from16 v2, v19

    if-nez v3, :cond_26

    invoke-direct/range {p0 .. p0}, Lcom/sigmob/sdk/base/common/ae;->b()I

    move-result v1

    goto :goto_18

    :cond_26
    move v1, v3

    :goto_18
    move-object/from16 v4, v17

    goto :goto_16

    :pswitch_16
    move-object/from16 v4, v17

    move-object/from16 v2, v18

    if-nez v3, :cond_27

    invoke-direct/range {p0 .. p0}, Lcom/sigmob/sdk/base/common/ae;->b()I

    move-result v1

    goto :goto_16

    :cond_27
    move v1, v3

    goto :goto_16

    :pswitch_17
    move-object v4, v6

    invoke-direct/range {p0 .. p3}, Lcom/sigmob/sdk/base/common/ae;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v1

    invoke-direct {v7, v3}, Lcom/sigmob/sdk/base/common/ae;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v7, Lcom/sigmob/sdk/base/common/ae;->b:I

    if-lez v2, :cond_28

    if-lez v3, :cond_28

    mul-int/lit8 v2, v3, 0x64

    invoke-direct/range {p0 .. p0}, Lcom/sigmob/sdk/base/common/ae;->b()I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_28
    invoke-virtual {v1, v14, v13}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :pswitch_18
    move-object v4, v6

    move-object/from16 v16, v9

    const/4 v1, 0x0

    invoke-direct {v7, v0, v4, v3, v1}, Lcom/sigmob/sdk/base/common/ae;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v1

    const-string v3, "_SETCLOSETIME_"

    iget v5, v7, Lcom/sigmob/sdk/base/common/ae;->e:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v13}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_VIDEOTIME_"

    iget v3, v7, Lcom/sigmob/sdk/base/common/ae;->b:I

    invoke-direct {v7, v3}, Lcom/sigmob/sdk/base/common/ae;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_COMPLETED_"

    invoke-virtual {v1, v2, v13}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_PLAYFIRSTFRAME_"

    invoke-virtual {v1, v2, v13}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_ISTRUNCATION_"

    invoke-direct/range {p0 .. p0}, Lcom/sigmob/sdk/base/common/ae;->a()Z

    move-result v3

    if-eqz v3, :cond_29

    move-object/from16 v9, v16

    goto :goto_19

    :cond_29
    move-object v9, v13

    :goto_19
    invoke-virtual {v1, v2, v9}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_14

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RewardVideoViewAbilitySessionrecordDisplayEvent: error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_2a
    :goto_1a
    const/4 v1, 0x1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7cd3242c -> :sswitch_18
        -0x7a3c9f5f -> :sswitch_17
        -0x7222c9a5 -> :sswitch_16
        -0x7172e67f -> :sswitch_15
        -0x4bf6736d -> :sswitch_14
        -0x3a82fa41 -> :sswitch_13
        -0x37b0b0d1 -> :sswitch_12
        -0x321793ce -> :sswitch_11
        -0x2e4ef22a -> :sswitch_10
        -0x23bacec7 -> :sswitch_f
        -0x1e7107ff -> :sswitch_e
        -0x16bbf48a -> :sswitch_d
        -0x1244fe7e -> :sswitch_c
        -0xe1ebacd -> :sswitch_b
        -0x266f082 -> :sswitch_a
        0x335219 -> :sswitch_9
        0x35dafd -> :sswitch_8
        0x35e57f -> :sswitch_7
        0x5a5c588 -> :sswitch_6
        0x68ac462 -> :sswitch_5
        0x6dbd714 -> :sswitch_4
        0x1c1dab05 -> :sswitch_3
        0x32554ade -> :sswitch_2
        0x3a209295 -> :sswitch_1
        0x5b4d31e4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;ZI)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adUnit",
            "isForceShow",
            "playHeadMillis"
        }
    .end annotation

    .line 10
    iput-boolean p2, p0, Lcom/sigmob/sdk/base/common/ae;->c:Z

    iput p3, p0, Lcom/sigmob/sdk/base/common/ae;->d:I

    const/4 p1, 0x1

    return p1
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adUnit"
        }
    .end annotation

    .line 5
    const-string v0, "ad_close"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/ae;->b()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sigmob/sdk/base/common/ae;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.class public Lcom/windmill/sdk/strategy/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Z

.field public k:I

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public o:Z

.field public p:I

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public u:I


# direct methods
.method public constructor <init>(ILjava/lang/String;IIZIIIIZZILjava/util/List;Ljava/util/Map;ZIZZZLjava/util/Map;)V
    .locals 6
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
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "maxConcurrent",
            "strategy_id",
            "ab_flag",
            "traffic_weight",
            "enable_ab_test",
            "load_timeout",
            "type",
            "time_type",
            "refresh_interval",
            "auto_load",
            "bid_switch",
            "bidding_timeout",
            "track_url",
            "dc_options",
            "enable_concurrency",
            "max_concurrent_count",
            "notify_bid_result",
            "strategy_realtime_refresh",
            "client_bidding_switch",
            "currency_setting"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "IIZIIIIZZI",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZIZZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p6

    move v2, p8

    move v3, p9

    move/from16 v4, p12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v5, p1

    .line 2
    iput v5, v0, Lcom/windmill/sdk/strategy/q;->a:I

    move-object v5, p2

    .line 3
    iput-object v5, v0, Lcom/windmill/sdk/strategy/q;->b:Ljava/lang/String;

    move v5, p3

    .line 4
    iput v5, v0, Lcom/windmill/sdk/strategy/q;->c:I

    move v5, p4

    .line 5
    iput v5, v0, Lcom/windmill/sdk/strategy/q;->d:I

    move v5, p5

    .line 6
    iput-boolean v5, v0, Lcom/windmill/sdk/strategy/q;->e:Z

    .line 7
    iput v1, v0, Lcom/windmill/sdk/strategy/q;->f:I

    move v5, p7

    .line 8
    iput v5, v0, Lcom/windmill/sdk/strategy/q;->g:I

    .line 9
    iput v2, v0, Lcom/windmill/sdk/strategy/q;->u:I

    .line 10
    iput v3, v0, Lcom/windmill/sdk/strategy/q;->h:I

    move/from16 v5, p10

    .line 11
    iput-boolean v5, v0, Lcom/windmill/sdk/strategy/q;->i:Z

    move/from16 v5, p11

    .line 12
    iput-boolean v5, v0, Lcom/windmill/sdk/strategy/q;->j:Z

    .line 13
    iput v4, v0, Lcom/windmill/sdk/strategy/q;->k:I

    move-object/from16 v5, p13

    .line 14
    iput-object v5, v0, Lcom/windmill/sdk/strategy/q;->l:Ljava/util/List;

    move-object/from16 v5, p14

    .line 15
    iput-object v5, v0, Lcom/windmill/sdk/strategy/q;->n:Ljava/util/Map;

    move/from16 v5, p15

    .line 16
    iput-boolean v5, v0, Lcom/windmill/sdk/strategy/q;->o:Z

    move/from16 v5, p16

    .line 17
    iput v5, v0, Lcom/windmill/sdk/strategy/q;->p:I

    move/from16 v5, p17

    .line 18
    iput-boolean v5, v0, Lcom/windmill/sdk/strategy/q;->q:Z

    move/from16 v5, p18

    .line 19
    iput-boolean v5, v0, Lcom/windmill/sdk/strategy/q;->r:Z

    move/from16 v5, p19

    .line 20
    iput-boolean v5, v0, Lcom/windmill/sdk/strategy/q;->s:Z

    move-object/from16 v5, p20

    .line 21
    iput-object v5, v0, Lcom/windmill/sdk/strategy/q;->t:Ljava/util/Map;

    if-nez v2, :cond_0

    mul-int/lit16 v2, v3, 0x3e8

    .line 22
    iput v2, v0, Lcom/windmill/sdk/strategy/q;->h:I

    mul-int/lit16 v2, v4, 0x3e8

    .line 23
    iput v2, v0, Lcom/windmill/sdk/strategy/q;->k:I

    mul-int/lit16 v1, v1, 0x3e8

    .line 24
    iput v1, v0, Lcom/windmill/sdk/strategy/q;->f:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/strategy/q;->m:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/windmill/sdk/strategy/q;->m:Ljava/util/List;

    return-void
.end method

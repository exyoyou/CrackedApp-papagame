.class public Lcom/windmill/sdk/models/A1bC2d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public eF3gH4:I

.field public iJ5kL6:J

.field public mN7oP8:I

.field public pTaOB9:I

.field public qR9sT0:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "eF3gH4",
            "iJ5kL6",
            "mN7oP8",
            "pTaOB9",
            "qR9sT0"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/windmill/sdk/models/A1bC2d;->eF3gH4:I

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/windmill/sdk/models/A1bC2d;->iJ5kL6:J

    .line 7
    .line 8
    iput p4, p0, Lcom/windmill/sdk/models/A1bC2d;->mN7oP8:I

    .line 9
    .line 10
    iput-object p6, p0, Lcom/windmill/sdk/models/A1bC2d;->qR9sT0:Ljava/lang/String;

    .line 11
    .line 12
    iput p5, p0, Lcom/windmill/sdk/models/A1bC2d;->pTaOB9:I

    .line 13
    .line 14
    return-void
.end method

.method public static addEvent(ILcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventId",
            "adRequest",
            "adStrategy",
            "initMap"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aJ()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    return-void
.end method

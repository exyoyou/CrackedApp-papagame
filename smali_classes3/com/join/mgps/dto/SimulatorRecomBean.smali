.class public Lcom/join/mgps/dto/SimulatorRecomBean;
.super Lcom/join/mgps/dto/CollectionBeanSub;
.source "SourceFile"


# instance fields
.field private simulator_main_rec_pic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/CollectionBeanSub;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getSimulator_main_rec_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorRecomBean;->simulator_main_rec_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setSimulator_main_rec_pic(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "simulator_main_rec_pic"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorRecomBean;->simulator_main_rec_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

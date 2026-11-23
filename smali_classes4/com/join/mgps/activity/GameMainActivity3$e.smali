.class Lcom/join/mgps/activity/GameMainActivity3$e;
.super Lcom/join/mgps/ad/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameMainActivity3;->initInfoStreamTTAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic r:Lcom/join/mgps/activity/GameMainActivity3;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainActivity3;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "ctx",
            "appId",
            "posId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3$e;->r:Lcom/join/mgps/activity/GameMainActivity3;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/join/mgps/ad/w;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onInitSuccess()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/o;->onInitSuccess()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$e;->r:Lcom/join/mgps/activity/GameMainActivity3;

    .line 5
    .line 6
    iget v0, v0, Lcom/join/mgps/activity/GameMainActivity3;->videoHeight:I

    .line 7
    .line 8
    int-to-double v0, v0

    .line 9
    const-wide/high16 v2, 0x3fec000000000000L    # 0.875

    .line 10
    .line 11
    mul-double v0, v0, v2

    .line 12
    .line 13
    double-to-int v0, v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-virtual {p0, v2, v0, v1}, Lcom/join/mgps/ad/w;->b(III)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

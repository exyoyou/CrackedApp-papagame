.class Lcom/windmill/sdk/common/j$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/utils/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/strategy/a;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/strategy/a;

.field final synthetic b:Lcom/windmill/sdk/common/j;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/j;Lcom/windmill/sdk/strategy/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$strategy"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/j$16;->b:Lcom/windmill/sdk/common/j;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/j$16;->a:Lcom/windmill/sdk/strategy/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAddExtra(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointEntityBase"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/windmill/sdk/point/PointEntityWind;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    check-cast p1, Lcom/windmill/sdk/point/PointEntityWind;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/windmill/sdk/common/j$16;->b:Lcom/windmill/sdk/common/j;

    .line 8
    .line 9
    iget-boolean v0, v0, Lcom/windmill/sdk/common/l;->f:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "0"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "1"

    .line 17
    .line 18
    :goto_0
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setExecution_scene(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/windmill/sdk/common/j$16;->a:Lcom/windmill/sdk/strategy/a;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aJ()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/windmill/sdk/common/j$16;->a:Lcom/windmill/sdk/strategy/a;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aJ()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/common/j$16;->b:Lcom/windmill/sdk/common/j;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/windmill/sdk/common/j;->b(Lcom/windmill/sdk/common/j;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_1
    return-void
.end method

.class Lcom/windmill/sdk/strategy/l$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/utils/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/strategy/l;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/strategy/l;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/strategy/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/strategy/l$3;->a:Lcom/windmill/sdk/strategy/l;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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
    iget-object v0, p0, Lcom/windmill/sdk/strategy/l$3;->a:Lcom/windmill/sdk/strategy/l;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/windmill/sdk/strategy/l;->d(Lcom/windmill/sdk/strategy/l;)Lcom/windmill/sdk/common/l;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/windmill/sdk/strategy/l$3;->a:Lcom/windmill/sdk/strategy/l;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/windmill/sdk/strategy/l;->d(Lcom/windmill/sdk/strategy/l;)Lcom/windmill/sdk/common/l;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-boolean v0, v0, Lcom/windmill/sdk/common/l;->f:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-string v0, "0"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v0, "1"

    .line 29
    .line 30
    :goto_0
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setExecution_scene(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/strategy/l$3;->a:Lcom/windmill/sdk/strategy/l;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/windmill/sdk/strategy/l;->e(Lcom/windmill/sdk/strategy/l;)Lcom/windmill/sdk/WindMillAdRequest;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/windmill/sdk/strategy/l$3;->a:Lcom/windmill/sdk/strategy/l;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/windmill/sdk/strategy/l;->e(Lcom/windmill/sdk/strategy/l;)Lcom/windmill/sdk/WindMillAdRequest;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAdRequest;->getLoadId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    iget-object v0, p0, Lcom/windmill/sdk/strategy/l$3;->a:Lcom/windmill/sdk/strategy/l;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/windmill/sdk/strategy/l;->e(Lcom/windmill/sdk/strategy/l;)Lcom/windmill/sdk/WindMillAdRequest;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAdRequest;->getLoadId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method

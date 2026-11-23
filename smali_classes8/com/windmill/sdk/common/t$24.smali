.class Lcom/windmill/sdk/common/t$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/t;->b(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/strategy/a;

.field final synthetic b:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

.field final synthetic c:Lcom/windmill/sdk/common/t;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/t;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$adStrategy",
            "val$adAdapter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/t$24;->c:Lcom/windmill/sdk/common/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/t$24;->a:Lcom/windmill/sdk/strategy/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/common/t$24;->b:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "------loadInnerAd: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/windmill/sdk/common/t$24;->a:Lcom/windmill/sdk/strategy/a;

    .line 12
    .line 13
    iget-boolean v1, v1, Lcom/windmill/sdk/strategy/a;->v:Z

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/windmill/sdk/common/t$24;->a:Lcom/windmill/sdk/strategy/a;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/windmill/sdk/common/t$24;->a:Lcom/windmill/sdk/strategy/a;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    iput-boolean v1, v0, Lcom/windmill/sdk/strategy/a;->v:Z

    .line 43
    .line 44
    iget-object v2, p0, Lcom/windmill/sdk/common/t$24;->b:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/windmill/sdk/common/t$24;->c:Lcom/windmill/sdk/common/t;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aN()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {v1, v0}, Lcom/windmill/sdk/common/l;->a(I)Landroid/app/Activity;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const/4 v4, 0x0

    .line 57
    iget-object v0, p0, Lcom/windmill/sdk/common/t$24;->c:Lcom/windmill/sdk/common/t;

    .line 58
    .line 59
    iget-object v5, v0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 60
    .line 61
    iget-object v6, p0, Lcom/windmill/sdk/common/t$24;->a:Lcom/windmill/sdk/strategy/a;

    .line 62
    .line 63
    const/4 v7, 0x0

    .line 64
    invoke-virtual/range {v2 .. v7}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->loadInnerAd(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Z)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/windmill/sdk/common/t$24;->c:Lcom/windmill/sdk/common/t;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/windmill/sdk/common/t$24;->a:Lcom/windmill/sdk/strategy/a;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/windmill/sdk/common/t$24;->b:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

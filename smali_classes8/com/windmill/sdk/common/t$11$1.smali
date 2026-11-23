.class Lcom/windmill/sdk/common/t$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/t$11;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/strategy/a;

.field final synthetic b:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

.field final synthetic c:Lcom/windmill/sdk/common/t$11;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/t$11;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$adStrategy",
            "val$adAdapter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/t$11$1;->c:Lcom/windmill/sdk/common/t$11;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/t$11$1;->a:Lcom/windmill/sdk/strategy/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/common/t$11$1;->b:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic a(Lcom/windmill/sdk/common/t$11$1;Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/windmill/sdk/common/t$11$1;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    return-void
.end method

.method private synthetic a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/common/t$11$1;->c:Lcom/windmill/sdk/common/t$11;

    iget-object v0, v0, Lcom/windmill/sdk/common/t$11;->c:Lcom/windmill/sdk/common/t;

    invoke-virtual {v0, p1, p2}, Lcom/windmill/sdk/common/t;->adapterDidCloseAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/t$11$1;->a:Lcom/windmill/sdk/strategy/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aK()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/windmill/sdk/common/t$11$1;->c:Lcom/windmill/sdk/common/t$11;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/windmill/sdk/common/t$11;->c:Lcom/windmill/sdk/common/t;

    .line 13
    .line 14
    new-instance v1, Lcom/windmill/sdk/common/a;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/windmill/sdk/common/t$11$1;->b:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelId()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object v3, p0, Lcom/windmill/sdk/common/t$11$1;->c:Lcom/windmill/sdk/common/t$11;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/windmill/sdk/common/t$11;->c:Lcom/windmill/sdk/common/t;

    .line 25
    .line 26
    invoke-static {v3}, Lcom/windmill/sdk/common/t;->b(Lcom/windmill/sdk/common/t;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-direct {v1, v2, v3}, Lcom/windmill/sdk/common/a;-><init>(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/common/t;Lcom/windmill/sdk/common/a;)Lcom/windmill/sdk/common/a;

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/windmill/sdk/common/t$11$1;->c:Lcom/windmill/sdk/common/t$11;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/windmill/sdk/common/t$11;->c:Lcom/windmill/sdk/common/t;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/windmill/sdk/common/t;->c(Lcom/windmill/sdk/common/t;)Lcom/windmill/sdk/common/a;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/windmill/sdk/common/t$11$1;->a:Lcom/windmill/sdk/strategy/a;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->p()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    int-to-long v1, v1

    .line 51
    iget-object v3, p0, Lcom/windmill/sdk/common/t$11$1;->a:Lcom/windmill/sdk/strategy/a;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/windmill/sdk/strategy/a;->q()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    iget-object v4, p0, Lcom/windmill/sdk/common/t$11$1;->b:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 58
    .line 59
    iget-object v5, p0, Lcom/windmill/sdk/common/t$11$1;->a:Lcom/windmill/sdk/strategy/a;

    .line 60
    .line 61
    new-instance v6, Lcom/windmill/sdk/common/a0;

    .line 62
    .line 63
    invoke-direct {v6, p0, v4, v5}, Lcom/windmill/sdk/common/a0;-><init>(Lcom/windmill/sdk/common/t$11$1;Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/windmill/sdk/common/a;->a(JZLcom/windmill/sdk/common/a$a;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/common/t$11$1;->b:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/windmill/sdk/common/t$11$1;->c:Lcom/windmill/sdk/common/t$11;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/windmill/sdk/common/t$11;->b:Landroid/app/Activity;

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    iget-object v3, p0, Lcom/windmill/sdk/common/t$11$1;->a:Lcom/windmill/sdk/strategy/a;

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2, v3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->showInnerAd(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/windmill/sdk/strategy/a;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

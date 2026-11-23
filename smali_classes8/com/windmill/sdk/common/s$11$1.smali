.class Lcom/windmill/sdk/common/s$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/s$11;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

.field final synthetic b:Lcom/windmill/sdk/strategy/a;

.field final synthetic c:Lcom/windmill/sdk/common/s$11;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/s$11;Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$adapter",
            "val$adStrategy"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/s$11$1;->c:Lcom/windmill/sdk/common/s$11;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/s$11$1;->a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/common/s$11$1;->b:Lcom/windmill/sdk/strategy/a;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/s$11$1;->c:Lcom/windmill/sdk/common/s$11;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/windmill/sdk/common/s$11;->a:Lcom/windmill/sdk/common/s;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/windmill/sdk/common/s;->j(Lcom/windmill/sdk/common/s;)Landroid/widget/RelativeLayout;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/windmill/sdk/common/s$11$1;->a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/windmill/sdk/common/s$11$1;->c:Lcom/windmill/sdk/common/s$11;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/windmill/sdk/common/s$11;->a:Lcom/windmill/sdk/common/s;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/windmill/sdk/common/s;->f()Landroid/app/Activity;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/windmill/sdk/common/s$11$1;->c:Lcom/windmill/sdk/common/s$11;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/windmill/sdk/common/s$11;->a:Lcom/windmill/sdk/common/s;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/windmill/sdk/common/s;->j(Lcom/windmill/sdk/common/s;)Landroid/widget/RelativeLayout;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p0, Lcom/windmill/sdk/common/s$11$1;->b:Lcom/windmill/sdk/strategy/a;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2, v3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->showInnerAd(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/windmill/sdk/strategy/a;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/common/s$11$1;->a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/windmill/sdk/common/s$11$1;->c:Lcom/windmill/sdk/common/s$11;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/windmill/sdk/common/s$11;->a:Lcom/windmill/sdk/common/s;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/windmill/sdk/common/s;->f()Landroid/app/Activity;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/windmill/sdk/common/s$11$1;->c:Lcom/windmill/sdk/common/s$11;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/windmill/sdk/common/s$11;->a:Lcom/windmill/sdk/common/s;

    .line 48
    .line 49
    invoke-static {v2}, Lcom/windmill/sdk/common/s;->i(Lcom/windmill/sdk/common/s;)Landroid/widget/RelativeLayout;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v3, p0, Lcom/windmill/sdk/common/s$11$1;->b:Lcom/windmill/sdk/strategy/a;

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2, v3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->showInnerAd(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/windmill/sdk/strategy/a;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

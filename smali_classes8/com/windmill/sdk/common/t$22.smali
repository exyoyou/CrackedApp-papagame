.class Lcom/windmill/sdk/common/t$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/strategy/a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

.field final synthetic b:Lcom/windmill/sdk/strategy/a;

.field final synthetic c:Z

.field final synthetic d:Lcom/windmill/sdk/common/t;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/t;Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$adAdapter",
            "val$adStrategy",
            "val$isLoadAdPrice"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/t$22;->d:Lcom/windmill/sdk/common/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/t$22;->a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/common/t$22;->b:Lcom/windmill/sdk/strategy/a;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/windmill/sdk/common/t$22;->c:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/t$22;->a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/windmill/sdk/common/t$22;->d:Lcom/windmill/sdk/common/t;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/windmill/sdk/common/t$22;->b:Lcom/windmill/sdk/strategy/a;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/windmill/sdk/strategy/a;->aN()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {v1, v2}, Lcom/windmill/sdk/common/l;->a(I)Landroid/app/Activity;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    iget-object v3, p0, Lcom/windmill/sdk/common/t$22;->d:Lcom/windmill/sdk/common/t;

    .line 17
    .line 18
    iget-object v3, v3, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 19
    .line 20
    iget-object v4, p0, Lcom/windmill/sdk/common/t$22;->b:Lcom/windmill/sdk/strategy/a;

    .line 21
    .line 22
    iget-boolean v5, p0, Lcom/windmill/sdk/common/t$22;->c:Z

    .line 23
    .line 24
    invoke-virtual/range {v0 .. v5}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->loadInnerAd(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

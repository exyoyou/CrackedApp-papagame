.class Lcom/windmill/sdk/custom/WMAdBaseAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/custom/WMCustomAdapterProxy$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/custom/WMAdBaseAdapter;->loadInnerAd(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Lcom/windmill/sdk/WindMillAdRequest;

.field final synthetic e:Z

.field final synthetic f:Lcom/windmill/sdk/strategy/a;

.field final synthetic g:Lcom/windmill/sdk/custom/WMAdBaseAdapter;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/custom/WMAdBaseAdapter;ZLandroid/content/Context;Landroid/view/ViewGroup;Lcom/windmill/sdk/WindMillAdRequest;ZLcom/windmill/sdk/strategy/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$isLoadToOut",
            "val$context",
            "val$viewGroup",
            "val$adRequest",
            "val$isLoadAdPrice",
            "val$adStrategy"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$3;->g:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$3;->a:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$3;->b:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$3;->c:Landroid/view/ViewGroup;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$3;->d:Lcom/windmill/sdk/WindMillAdRequest;

    .line 10
    .line 11
    iput-boolean p6, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$3;->e:Z

    .line 12
    .line 13
    iput-object p7, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$3;->f:Lcom/windmill/sdk/strategy/a;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/windmill/sdk/custom/b;->a(Lcom/windmill/sdk/custom/WMCustomAdapterProxy$a;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "message"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$3;->g:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    invoke-static {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;)Lcom/windmill/sdk/base/WMAdBaseConnector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$3;->g:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    invoke-static {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;)Lcom/windmill/sdk/base/WMAdBaseConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$3;->g:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    iget-object v2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$3;->f:Lcom/windmill/sdk/strategy/a;

    new-instance v3, Lcom/windmill/sdk/base/WMAdapterError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p1, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/windmill/sdk/base/WMAdBaseConnector;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$3;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$3;->g:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$3;->b:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$3;->c:Landroid/view/ViewGroup;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$3;->d:Lcom/windmill/sdk/WindMillAdRequest;

    .line 18
    .line 19
    iget-boolean v4, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter$3;->e:Z

    .line 20
    .line 21
    invoke-static {v0, v1, v2, v3, v4}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/windmill/sdk/WindMillAdRequest;Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

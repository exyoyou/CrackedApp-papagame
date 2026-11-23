.class Lcom/windmill/sdk/common/l$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/custom/WMCustomAdapterProxy$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;Lcom/windmill/sdk/base/WMAdBaseConnector;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/WindMillAdRequest;

.field final synthetic b:Lcom/windmill/sdk/strategy/a;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

.field final synthetic f:Lcom/windmill/sdk/common/l;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/l;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;ZLjava/lang/String;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$windAdRequest",
            "val$strategy",
            "val$supportRepeatInit",
            "val$appId",
            "val$finalAdAdapter1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/l$10;->f:Lcom/windmill/sdk/common/l;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/l$10;->a:Lcom/windmill/sdk/WindMillAdRequest;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/common/l$10;->b:Lcom/windmill/sdk/strategy/a;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/windmill/sdk/common/l$10;->c:Z

    .line 8
    .line 9
    iput-object p5, p0, Lcom/windmill/sdk/common/l$10;->d:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/windmill/sdk/common/l$10;->e:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/common/l$10;->a:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/windmill/sdk/common/l$10;->b:Lcom/windmill/sdk/strategy/a;

    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->aL()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-boolean v2, p0, Lcom/windmill/sdk/common/l$10;->c:Z

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/windmill/sdk/common/l$10;->f:Lcom/windmill/sdk/common/l;

    invoke-static {v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/l;)Ljava/util/Set;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/windmill/sdk/common/l$10;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---initializeChannelAdapter--point start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/windmill/sdk/common/l$10;->b:Lcom/windmill/sdk/strategy/a;

    invoke-virtual {v2}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/windmill/sdk/common/l$10;->a:Lcom/windmill/sdk/WindMillAdRequest;

    iget-object v2, p0, Lcom/windmill/sdk/common/l$10;->b:Lcom/windmill/sdk/strategy/a;

    iget-object v3, p0, Lcom/windmill/sdk/common/l$10;->f:Lcom/windmill/sdk/common/l;

    iget-object v3, v3, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    new-instance v4, Lcom/windmill/sdk/common/l$10$1;

    invoke-direct {v4, p0, v0}, Lcom/windmill/sdk/common/l$10$1;-><init>(Lcom/windmill/sdk/common/l$10;Ljava/lang/String;)V

    const-string v0, "platform_aggre_init"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    return-void
.end method

.method public synthetic a(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/windmill/sdk/custom/b;->b(Lcom/windmill/sdk/custom/WMCustomAdapterProxy$a;ILjava/lang/String;)V

    return-void
.end method

.method public synthetic b()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/windmill/sdk/custom/b;->c(Lcom/windmill/sdk/custom/WMCustomAdapterProxy$a;)V

    return-void
.end method

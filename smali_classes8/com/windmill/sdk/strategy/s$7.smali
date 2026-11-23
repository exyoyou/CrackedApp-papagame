.class Lcom/windmill/sdk/strategy/s$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/strategy/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/strategy/s;->c(Lcom/windmill/sdk/strategy/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/strategy/a;

.field final synthetic b:Lcom/windmill/sdk/strategy/s;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/strategy/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$adStrategy"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/strategy/s$7;->b:Lcom/windmill/sdk/strategy/s;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/strategy/s$7;->a:Lcom/windmill/sdk/strategy/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adInfo",
            "strategy",
            "code",
            "message"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 13
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$7;->b:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->r(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 14
    sget-object p1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiddingFailed for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " channel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " placementID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$7;->a:Lcom/windmill/sdk/strategy/a;

    invoke-virtual {p1, p3}, Lcom/windmill/sdk/strategy/a;->a(I)V

    .line 16
    new-instance p1, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    invoke-direct {p1}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;-><init>()V

    .line 17
    iget-object p4, p0, Lcom/windmill/sdk/strategy/s$7;->a:Lcom/windmill/sdk/strategy/a;

    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->channel_id(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    .line 18
    iget-object p4, p0, Lcom/windmill/sdk/strategy/s$7;->a:Lcom/windmill/sdk/strategy/a;

    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->p_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    .line 19
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iput-object p4, p1, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->no_token_reason:Ljava/lang/Integer;

    const/4 p4, 0x2

    .line 20
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->tag(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    .line 21
    iget-object p4, p0, Lcom/windmill/sdk/strategy/s$7;->b:Lcom/windmill/sdk/strategy/s;

    invoke-static {p4}, Lcom/windmill/sdk/strategy/s;->l(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p4

    invoke-virtual {p1}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->build()Lcom/czhj/sdk/common/models/HeaderBidding;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$7;->b:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->m(Lcom/windmill/sdk/strategy/s;)V

    .line 23
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Lcom/windmill/sdk/strategy/s$7$1;

    invoke-direct {p4, p0, p3}, Lcom/windmill/sdk/strategy/s$7$1;-><init>(Lcom/windmill/sdk/strategy/s$7;I)V

    invoke-static {p1, p2, p4}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/utils/m$a;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adInfo",
            "strategy",
            "headerBiddingParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/models/AdInfo;",
            "Lcom/windmill/sdk/strategy/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 1
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$7;->b:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->r(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    sget-object p1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiddingSuccess for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " channel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " placementID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$7;->a:Lcom/windmill/sdk/strategy/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/strategy/a;->a(I)V

    .line 4
    new-instance p1, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    invoke-direct {p1}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;-><init>()V

    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$7;->a:Lcom/windmill/sdk/strategy/a;

    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->channel_id(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    .line 6
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$7;->a:Lcom/windmill/sdk/strategy/a;

    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->p_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p1, p3}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->options(Ljava/util/Map;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->at()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result p3

    const/16 v0, 0x3e6

    if-ne p3, v0, :cond_2

    .line 9
    :cond_1
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->x()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 10
    iget-object p3, p1, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->options:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 11
    :cond_2
    iget-object p2, p0, Lcom/windmill/sdk/strategy/s$7;->b:Lcom/windmill/sdk/strategy/s;

    invoke-static {p2}, Lcom/windmill/sdk/strategy/s;->l(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-virtual {p1}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->build()Lcom/czhj/sdk/common/models/HeaderBidding;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$7;->b:Lcom/windmill/sdk/strategy/s;

    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->m(Lcom/windmill/sdk/strategy/s;)V

    :cond_3
    return-void
.end method

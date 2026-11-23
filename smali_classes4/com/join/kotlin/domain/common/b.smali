.class public final synthetic Lcom/join/kotlin/domain/common/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/domain/common/SingleLiveEvents;

.field public final synthetic c:Landroidx/lifecycle/Observer;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/domain/common/SingleLiveEvents;Landroidx/lifecycle/Observer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/domain/common/b;->b:Lcom/join/kotlin/domain/common/SingleLiveEvents;

    iput-object p2, p0, Lcom/join/kotlin/domain/common/b;->c:Landroidx/lifecycle/Observer;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/domain/common/b;->b:Lcom/join/kotlin/domain/common/SingleLiveEvents;

    iget-object v1, p0, Lcom/join/kotlin/domain/common/b;->c:Landroidx/lifecycle/Observer;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/domain/common/SingleLiveEvents;->a(Lcom/join/kotlin/domain/common/SingleLiveEvents;Landroidx/lifecycle/Observer;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/join/kotlin/ui/netgame/viewmodel/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/netgame/viewmodel/b;->b:Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;

    iput-boolean p2, p0, Lcom/join/kotlin/ui/netgame/viewmodel/b;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/netgame/viewmodel/b;->b:Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;

    iget-boolean v1, p0, Lcom/join/kotlin/ui/netgame/viewmodel/b;->c:Z

    check-cast p1, Lcom/join/kotlin/base/net/AppException;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;->b(Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;ZLcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

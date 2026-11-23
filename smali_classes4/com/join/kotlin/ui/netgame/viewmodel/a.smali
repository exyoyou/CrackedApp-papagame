.class public final synthetic Lcom/join/kotlin/ui/netgame/viewmodel/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;

.field public final synthetic c:Z

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/netgame/viewmodel/a;->b:Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;

    iput-boolean p2, p0, Lcom/join/kotlin/ui/netgame/viewmodel/a;->c:Z

    iput p3, p0, Lcom/join/kotlin/ui/netgame/viewmodel/a;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/netgame/viewmodel/a;->b:Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;

    iget-boolean v1, p0, Lcom/join/kotlin/ui/netgame/viewmodel/a;->c:Z

    iget v2, p0, Lcom/join/kotlin/ui/netgame/viewmodel/a;->d:I

    check-cast p1, Lcom/join/kotlin/ui/netgame/data/NetGameZoneResultData;

    invoke-static {v0, v1, v2, p1}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;->a(Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;ZILcom/join/kotlin/ui/netgame/data/NetGameZoneResultData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

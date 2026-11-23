.class public final synthetic Lcom/join/kotlin/ui/netgame/viewmodel/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/netgame/viewmodel/c;->b:Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/netgame/viewmodel/c;->b:Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel;

    check-cast p1, Lcom/join/kotlin/ui/netgame/data/NetGameZoneResultData;

    invoke-static {v0, p1}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel;->a(Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel;Lcom/join/kotlin/ui/netgame/data/NetGameZoneResultData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

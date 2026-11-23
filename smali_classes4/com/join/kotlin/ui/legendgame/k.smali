.class public final synthetic Lcom/join/kotlin/ui/legendgame/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/legendgame/k;->b:Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/k;->b:Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;

    check-cast p1, Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-static {v0, p1, p2, p3}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->R(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;IZ)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

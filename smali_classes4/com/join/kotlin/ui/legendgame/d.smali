.class public final synthetic Lcom/join/kotlin/ui/legendgame/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/legendgame/d;->b:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/d;->b:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;

    check-cast p1, Lcom/join/kotlin/ui/legendgame/data/LegendGameHeaderData;

    invoke-static {v0, p1}, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;->V(Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;Lcom/join/kotlin/ui/legendgame/data/LegendGameHeaderData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

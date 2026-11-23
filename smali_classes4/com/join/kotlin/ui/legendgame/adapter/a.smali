.class public final synthetic Lcom/join/kotlin/ui/legendgame/adapter/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;

.field public final synthetic c:Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/legendgame/adapter/a;->b:Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;

    iput-object p2, p0, Lcom/join/kotlin/ui/legendgame/adapter/a;->c:Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;

    iput p3, p0, Lcom/join/kotlin/ui/legendgame/adapter/a;->d:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/adapter/a;->b:Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;

    iget-object v1, p0, Lcom/join/kotlin/ui/legendgame/adapter/a;->c:Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;

    iget v2, p0, Lcom/join/kotlin/ui/legendgame/adapter/a;->d:I

    invoke-static {v0, v1, v2}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;->l(Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;I)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

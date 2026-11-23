.class public final synthetic Lcom/join/kotlin/ui/endgame/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/endgame/d;->b:Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/endgame/d;->b:Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;

    invoke-static {v0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->m(Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;)Lcom/join/kotlin/ui/endgame/adapter/EndGameSlotListAdapter;

    move-result-object v0

    return-object v0
.end method

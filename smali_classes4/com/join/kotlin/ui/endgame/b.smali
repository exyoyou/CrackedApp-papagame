.class public final synthetic Lcom/join/kotlin/ui/endgame/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/endgame/b;->b:Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/endgame/b;->b:Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;

    check-cast p1, Lcom/join/mgps/dto/ArchiveListBean;

    invoke-static {v0, p1}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->k(Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;Lcom/join/mgps/dto/ArchiveListBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

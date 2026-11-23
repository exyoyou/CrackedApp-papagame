.class public final synthetic Lcom/join/kotlin/autocode/dailyfind/fragment/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/b;->b:Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/b;->b:Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Lcom/join/kotlin/autocode/dailyfind/model/DateItem;

    invoke-static {v0, p1, p2, p3}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->R(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;IILcom/join/kotlin/autocode/dailyfind/model/DateItem;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/join/kotlin/autocode/dailyfind/viewmodel/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/e;->b:Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/e;->b:Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-static {v0, p1, p2, p3, p4}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->d(Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;ZLcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;II)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

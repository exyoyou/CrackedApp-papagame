.class public final synthetic Lcom/join/kotlin/autocode/dailyfind/viewmodel/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;

.field public final synthetic c:Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/c;->b:Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;

    iput-object p2, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/c;->c:Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;

    iput p3, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/c;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/c;->b:Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;

    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/c;->c:Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;

    iget v2, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/c;->d:I

    check-cast p1, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListDataBean;

    invoke-static {v0, v1, v2, p1}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->b(Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;ILcom/join/kotlin/autocode/dailyfind/model/DailyRankListDataBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

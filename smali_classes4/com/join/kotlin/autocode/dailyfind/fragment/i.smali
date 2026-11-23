.class public final synthetic Lcom/join/kotlin/autocode/dailyfind/fragment/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/i;->b:Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/i;->b:Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;

    invoke-static {v0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->Q(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    return-object v0
.end method

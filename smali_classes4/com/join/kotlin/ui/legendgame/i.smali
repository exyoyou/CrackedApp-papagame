.class public final synthetic Lcom/join/kotlin/ui/legendgame/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/join/mgps/dto/CommonGameInfoBean;

.field public final synthetic c:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/legendgame/i;->b:Lcom/join/mgps/dto/CommonGameInfoBean;

    iput-object p2, p0, Lcom/join/kotlin/ui/legendgame/i;->c:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/i;->b:Lcom/join/mgps/dto/CommonGameInfoBean;

    iget-object v1, p0, Lcom/join/kotlin/ui/legendgame/i;->c:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;

    invoke-static {v0, v1}, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;->U(Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

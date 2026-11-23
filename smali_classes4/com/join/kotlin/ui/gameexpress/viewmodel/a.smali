.class public final synthetic Lcom/join/kotlin/ui/gameexpress/viewmodel/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel;

.field public final synthetic c:Lcom/join/mgps/dto/ExtBean;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel;Lcom/join/mgps/dto/ExtBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/gameexpress/viewmodel/a;->b:Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel;

    iput-object p2, p0, Lcom/join/kotlin/ui/gameexpress/viewmodel/a;->c:Lcom/join/mgps/dto/ExtBean;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/gameexpress/viewmodel/a;->b:Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel;

    iget-object v1, p0, Lcom/join/kotlin/ui/gameexpress/viewmodel/a;->c:Lcom/join/mgps/dto/ExtBean;

    check-cast p1, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressResultData;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel;->b(Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel;Lcom/join/mgps/dto/ExtBean;Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressResultData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

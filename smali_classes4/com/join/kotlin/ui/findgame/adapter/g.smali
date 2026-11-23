.class public final synthetic Lcom/join/kotlin/ui/findgame/adapter/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic c:Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/adapter/g;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/adapter/g;->c:Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/g;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/adapter/g;->c:Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;

    invoke-static {v0, v1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->b(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

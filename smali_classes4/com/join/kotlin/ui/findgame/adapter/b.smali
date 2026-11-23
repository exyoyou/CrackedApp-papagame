.class public final synthetic Lcom/join/kotlin/ui/findgame/adapter/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/adapter/b;->b:Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;

    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/adapter/b;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/b;->b:Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/adapter/b;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->b(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

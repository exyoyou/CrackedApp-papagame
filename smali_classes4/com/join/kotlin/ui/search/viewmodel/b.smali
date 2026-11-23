.class public final synthetic Lcom/join/kotlin/ui/search/viewmodel/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;


# direct methods
.method public synthetic constructor <init>(ZLcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/join/kotlin/ui/search/viewmodel/b;->b:Z

    iput-object p2, p0, Lcom/join/kotlin/ui/search/viewmodel/b;->c:Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/search/viewmodel/b;->b:Z

    iget-object v1, p0, Lcom/join/kotlin/ui/search/viewmodel/b;->c:Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;

    check-cast p1, Lcom/join/kotlin/base/net/AppException;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;->a(ZLcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

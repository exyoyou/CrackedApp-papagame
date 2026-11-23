.class public final synthetic Lcom/join/kotlin/quark/viewmodel/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/quark/viewmodel/f;->b:Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;

    iput-boolean p2, p0, Lcom/join/kotlin/quark/viewmodel/f;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/viewmodel/f;->b:Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;

    iget-boolean v1, p0, Lcom/join/kotlin/quark/viewmodel/f;->c:Z

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->b(Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;ZLjava/util/ArrayList;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

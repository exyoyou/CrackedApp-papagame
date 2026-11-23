.class public final synthetic Lcom/join/kotlin/discount/viewmodel/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/discount/viewmodel/g;->b:Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/viewmodel/g;->b:Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    check-cast p1, Lcom/join/kotlin/discount/model/bean/CommentDataBean;

    invoke-static {v0, p1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->d(Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;Lcom/join/kotlin/discount/model/bean/CommentDataBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

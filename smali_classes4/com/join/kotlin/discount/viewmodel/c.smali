.class public final synthetic Lcom/join/kotlin/discount/viewmodel/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/discount/viewmodel/GameDetailCouponViewModel;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/discount/viewmodel/GameDetailCouponViewModel;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/discount/viewmodel/c;->b:Lcom/join/kotlin/discount/viewmodel/GameDetailCouponViewModel;

    iput-boolean p2, p0, Lcom/join/kotlin/discount/viewmodel/c;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/viewmodel/c;->b:Lcom/join/kotlin/discount/viewmodel/GameDetailCouponViewModel;

    iget-boolean v1, p0, Lcom/join/kotlin/discount/viewmodel/c;->c:Z

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/discount/viewmodel/GameDetailCouponViewModel;->a(Lcom/join/kotlin/discount/viewmodel/GameDetailCouponViewModel;ZLjava/util/List;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

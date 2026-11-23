.class public final synthetic Lcom/join/kotlin/discount/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/discount/GameDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/discount/GameDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/discount/s;->b:Lcom/join/kotlin/discount/GameDetailFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/s;->b:Lcom/join/kotlin/discount/GameDetailFragment;

    check-cast p1, Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;

    invoke-static {v0, p1}, Lcom/join/kotlin/discount/GameDetailFragment;->W(Lcom/join/kotlin/discount/GameDetailFragment;Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

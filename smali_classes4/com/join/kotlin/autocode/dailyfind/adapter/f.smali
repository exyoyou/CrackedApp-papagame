.class public final synthetic Lcom/join/kotlin/autocode/dailyfind/adapter/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/f;->b:Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;

    iput-object p2, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/f;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/f;->b:Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;

    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/f;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$4;->a(Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    return-void
.end method

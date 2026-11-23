.class public final synthetic Lcom/join/kotlin/ui/gameexpress/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/gameexpress/m;->b:Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/gameexpress/m;->b:Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;

    check-cast p1, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p1, p2}, Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;->m(Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

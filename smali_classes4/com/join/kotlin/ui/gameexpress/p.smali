.class public final synthetic Lcom/join/kotlin/ui/gameexpress/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/gameexpress/p;->b:Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/gameexpress/p;->b:Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;

    check-cast p1, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {v0, p1, p2, p3}, Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;->y(Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;II)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/join/kotlin/ui/userrecom/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/userrecom/b;->b:Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/userrecom/b;->b:Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;->j(Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;Ljava/util/ArrayList;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/join/kotlin/quark/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/quark/QuarkSearchResultActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/quark/QuarkSearchResultActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/quark/v;->b:Lcom/join/kotlin/quark/QuarkSearchResultActivity;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/v;->b:Lcom/join/kotlin/quark/QuarkSearchResultActivity;

    invoke-static {v0}, Lcom/join/kotlin/quark/QuarkSearchResultActivity;->j(Lcom/join/kotlin/quark/QuarkSearchResultActivity;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

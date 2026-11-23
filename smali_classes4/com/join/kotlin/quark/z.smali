.class public final synthetic Lcom/join/kotlin/quark/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/quark/ShareSourceActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/quark/ShareSourceActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/quark/z;->b:Lcom/join/kotlin/quark/ShareSourceActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/z;->b:Lcom/join/kotlin/quark/ShareSourceActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/join/kotlin/quark/ShareSourceActivity;->l(Lcom/join/kotlin/quark/ShareSourceActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/join/kotlin/ui/modleregin/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/modleregin/BtReginActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/modleregin/BtReginActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/modleregin/e;->b:Lcom/join/kotlin/ui/modleregin/BtReginActivity;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/e;->b:Lcom/join/kotlin/ui/modleregin/BtReginActivity;

    invoke-static {v0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->m(Lcom/join/kotlin/ui/modleregin/BtReginActivity;)Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;

    move-result-object v0

    return-object v0
.end method

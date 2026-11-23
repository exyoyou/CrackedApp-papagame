.class public final synthetic Lcom/join/kotlin/ui/modleregin/adapter/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;->c(ILcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

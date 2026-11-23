.class public final synthetic Lcom/join/kotlin/module/hmcloud/viewmodel/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lcom/join/mgps/dto/hmcloud/HMKeyItem;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/g;->b:Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/g;->b:Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-static {v0, p1, p2, p3, p4}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$addCombineKey$1;->b(Lcom/join/mgps/dto/hmcloud/HMKeyItem;IIII)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

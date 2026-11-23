.class public final synthetic Lcom/join/kotlin/module/hmcloud/viewmodel/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/m;->b:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/m;->b:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$checkSign$1;->b(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

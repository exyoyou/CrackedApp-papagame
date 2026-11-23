.class public final synthetic Lcom/join/kotlin/module/hmcloud/viewmodel/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/d;->b:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    iput-object p2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/d;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/d;->b:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/d;->c:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lcom/join/mgps/dto/hmcloud/HMOpConfig;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->e(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/jvm/functions/Function1;Lcom/join/mgps/dto/hmcloud/HMOpConfig;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

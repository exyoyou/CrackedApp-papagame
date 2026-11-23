.class public final synthetic Lcom/join/kotlin/module/hmcloud/viewmodel/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

.field public final synthetic c:Lcom/join/mgps/dto/hmcloud/HandleCfg;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lcom/join/mgps/dto/hmcloud/HandleCfg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/i;->b:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    iput-object p2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/i;->c:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/i;->b:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/i;->c:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    invoke-static {v0, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$deleteCustomOpConfig$2;->b(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lcom/join/mgps/dto/hmcloud/HandleCfg;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

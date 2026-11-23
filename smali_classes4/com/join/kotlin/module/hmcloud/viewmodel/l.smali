.class public final synthetic Lcom/join/kotlin/module/hmcloud/viewmodel/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

.field public final synthetic c:Lcom/join/mgps/dto/hmcloud/HandleCfg;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lcom/join/mgps/dto/hmcloud/HandleCfg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/l;->b:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    iput-object p2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/l;->c:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/l;->b:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/l;->c:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    check-cast p1, Lcom/join/mgps/dto/hmcloud/HMOpConfig;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$switchOpConfig$1;->b(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lcom/join/mgps/dto/hmcloud/HandleCfg;Lcom/join/mgps/dto/hmcloud/HMOpConfig;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
